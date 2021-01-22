# 10-1 ライブラリを作る
いろいろなプログラムで共有して使える便利なプログラムをライブラリと呼ぶ。

## Gemとは
Rubyでは大きく分けて3つのライブラリが存在する。
1つ目は何も準備せずに使える「組み込みライブラリ」(Integer，Stringなど)
2つ目は使う前にrequireメソッドを実行して準備する「標準添付ライブラリ」
3つ目は使う前にインストールが必要なGemと呼ばれるライブラリ。
ここではGemについて説明していく。

Gemはrubygems.orgというサイトで利用可能な形で公開されていて、10万を超えるGemが登録されている。
それぞれのGemを使うことで、提供している機能を自分のプログラムで使うことができる。

## Gemの使い方
ここでは、例としてawesome_printというGemを作ってみる。
このGemはpメソッドをより見やすい形で表示するapメソッドを提供する。
Gemを利用するためには、まずコマンドgem installコマンドに基づいてGem名を指定してインストールする。

```
gem install Gem名
```

```
$ gem install awesome_print
Successfully installed awesome_print-1.8.0
Parsing documentation for awesome_print-1.8.0
Done installing documentation for awesome_print after 0 seconds
1 gem installed
```

インストールしたGemは通常、プログラムの中でrequireメソッドを実行することで利用可能になる。
awesome_printの場合はrequire "awesome_print"を実行すると、それ以降でapメソッドを利用できるようになる。

```
require "awesome_print"
ap ["カフェラテ", "モカ","コーヒー"]
```

require "awesome_print"でawesome_print Gemを読み込む。
これは標準添付ライブラリのときと同様。
次にapメソッドを呼び出している。
apメソッドの使い方はpメソッドと同様。
Gemの使い方はGem毎に異なるため、Gem名で検索してドキュメントを読んでみること。

## Bundlerとは
Gemはgem installコマンドでかんたんにインストールすることが可能だが、この方法で沢山のGemをインストールしようとすると、使うGemの数だけコマンドを打たなくてはいけない。
それでは大変なので、複数のGemをかんたんに管理するBundlerという仕組みが用意されている。


## Bundlerをインストールする

最初はbundlerをインストールする。
bundlerもGemとして公開されている。

```
$ gem install bundler
Fetching bundler-2.2.6.gem
Successfully installed bundler-2.2.6
Parsing documentation for bundler-2.2.6
Installing ri documentation for bundler-2.2.6
Done installing documentation for bundler after 3 seconds
1 gem installed
```

## GemfileにインストールするGemを書く
Gemfileという名前のファイルに使用するGemを書いていく。
GemfileはBundlerを使ってインストールするGemのリストを書くファイル。
Gemfileはbundle initコマンドで雛形を作成し、そのファイルに使いたいGemを追記する、

```
$ bundle init
Writing new Gemfile to /practice-ruby/chapter-10/10-1/Gemfile
```

※ パスは一部省略して記載している

次に例として、pryというGemをGemfileに追記してみる。

```
# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

gem "pry" # <=追加箇所
```

これでGemfileは出来上がり。

## bundle installコマンドでインストールする
bundle installコマンドを実行する。
省略して bundle i またはbundleとも書ける。
このコマンドの実行時にはネットワークへの接続が必要なため、少し時間がかかる。

```
$ bundle install
Fetching gem metadata from https://rubygems.org/.......
Resolving dependencies...
Using bundler 2.2.6
Using method_source 1.0.0
Fetching coderay 1.1.3
Installing coderay 1.1.3
Fetching pry 0.13.1
Installing pry 0.13.1
Bundle complete! 1 Gemfile dependency, 4 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

これで、pry Gemを使う準備ができた。
gem install pryを実行したことと同じになる。


bundle installコマンドを実行すると、Gemfile.lockというファイルが作成される。
Gemfile.lockには、使われているGem名とそのバージョン情報などが記載されている。
Gemfile.lockは自動で作られるものなので、編集する必要はない。
Gemfile.lockとGemfileの2つはセットで使われるので、プログラムのファイル一式をバックアップするときなどは、どちらも保管しておくこと。

Gemfile... Gemをインストールするための発注書
Gemfile.lock...納品書(発注書に基づいて実際にインストールされたGemファイルとそのバージョン情報などが書かれている)


# 10-2 かんたんなwebアプリを作る
Rubyにはwebアプリを簡単に作ることができるGemであるsinatraがある。
これを使ってかんたんなwebアプリを作ってみる。

## webアプリとは
webアプリとは、「ブラウザから利用できるアプリ」のこと。

## sinatra Gemを使ってwebアプリを作る
sinatra Gemをインストールする

```
$ gem install sinatra
Fetching sinatra-2.1.0.gem
Fetching mustermann-1.1.1.gem
Fetching ruby2_keywords-0.0.4.gem
Successfully installed ruby2_keywords-0.0.4
Successfully installed mustermann-1.1.1
Successfully installed sinatra-2.1.0
Parsing documentation for ruby2_keywords-0.0.4
Installing ri documentation for ruby2_keywords-0.0.4
Parsing documentation for mustermann-1.1.1
Installing ri documentation for mustermann-1.1.1
Parsing documentation for sinatra-2.1.0
Installing ri documentation for sinatra-2.1.0
Done installing documentation for ruby2_keywords, mustermann, sinatra after 215 seconds
3 gems installed
```

次にプログラムを書いて実行する

```
require "sinatra"
get "/hi" do
  "hi!"
end
```

```
$ ruby sinatra_hi.rb
== Sinatra (v2.1.0) has taken the stage on 4567 for development with backup from Puma
Puma starting in single mode...
* Version 4.3.6 (ruby 2.6.5-p114), codename: Mysterious Traveller
* Min threads: 0, max threads: 16
* Environment: development
* Listening on tcp://127.0.0.1:4567
* Listening on tcp://[::1]:4567
Use Ctrl-C to stop
```

get メソッドはsinatraが用意しているメソッド。
get "/hi" と書くと、ブラウザからパス/hiへアクセスされたときの処理を続くブロックで書くことができる。

## webアプリの中でRubyプログラムを実行する
先程のプログラムでは"hi!"という決められた結果を毎回表示していたが、次はRubyのプログラムを使って、表示される結果が毎回変わるプログラムを書いてみる。
題材として、3種類のドリンクから1つをランダムで表示するプログラムを書いてみる。

```
require "sinatra"
get "/drink" do
  ["カフェラテ", "モカ", "コーヒー"].sample
end
```

```
$ ruby sinatra_drink.rb
== Sinatra (v2.1.0) has taken the stage on 4567 for development with backup from Puma
Puma starting in single mode...
* Version 4.3.6 (ruby 2.6.5-p114), codename: Mysterious Traveller
* Min threads: 0, max threads: 16
* Environment: development
* Listening on tcp://127.0.0.1:4567
* Listening on tcp://[::1]:4567
```

getメソッドに"/drink"を引数で私、リクエストのパスが"/drink"のときの処理をブロックで書く。
["カフェラテ","モカ","コーヒー"].sample は配列の要素いずれか1つをランダムで返す。
ブラウザでアクセスされるたびにこのプログラムが実行され、ランダムに選ばれたドリンク1つが表示される。(リロードも同様)

# 10-3 webへアクセスするプログラムを作る

## webページへアクセスしてHTMLを取得する
普段はブラウザでアクセスしているwebページへ、プログラムを書いてアクセスしてみる。
webページへアクセスするためにはHTTPまたはHTTPSを使う。
Rubyで用意しているnet/httpライブラリを使って、指定したURLへHTTPやHTTPSでアクセスしてみる。


```
require "net/http"
require "uri"

uri = URI.parse("https://example.com/")
puts Net::HTTP.get(uri)
```


require "net/httpで標準添付ライブラリnet/httpを読み込む。
これでNet::HTTPクラスを使えるようになる。(::は名前空間の指定で、Netモジュールの中にあるHTTPクラスを指す)
require "uri"で標準添付ライブラリuriを読み込む。これでURIモジュールを使えるようになる。
URI.parseメソッドにURL文字を渡すことで、URIオブジェクトを作っている。
(https://example.com/ はIANAが例として用意しているURLのこと)
Net::HTTP.getメソッドにURIオブジェクトを渡すと、URIオブジェクトが示す先のwebサーバへHTTP GETメソッドでリクエストを送る。
webサーバが返したレスポンスHTMLが戻り値となり、pメソッドで表示されている。


```
$ ruby get.rb
<!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    body {
        background-color: #f0f0f2;
        margin: 0;
        padding: 0;
        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;

    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 2em;
        background-color: #fdfdff;
        border-radius: 0.5em;
        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        div {
            margin: 0 auto;
            width: auto;
        }
    }
    </style>
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in literature without prior coordination or asking for permission.</p>
    <p><a href="https://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>
```


## webページへアクセスしてJSONを取得する
先程のプログラムで取得したHTMLは、ブラウザで見ることが主目的のため、HTMLデータの中から目当てのデータを取得する用途には向いていない。
データをやり取りすることを目的として別の形式として、JSONがある。
ここでは、web上のJSON形式のデータへアクセスして、中のデータを取得してみる。

```
require "net/http"
require "uri"
uri = URI.parse("https://igarashikuniaki.net/example.json")
p result = Net::HTTP.get(uri)
```

先程書いたプログラムとほぼ同じ構成のプログラムで、違うのはURLの部分だけ。
(URLはこの本の著者のページ)
Net::HTTP.getで取得したものはJSON形式の文字列。今回のリクエスト先はHTMLではなく、JSONを返している。
JSONはRubyのハッシュと似た形式。標準添付ライブラリjsonを使うとハッシュへ変換することができる。
プログラムを書き換えていく。

```
require "net/http"
require "uri"
require "json"

uri = URI.parse("https://igarashikuniaki.net/example.json")
result = Net::HTTP.get(uri)
hash = JSON.parse(result)
p hash
p hash["caffe latte"]
```

JSON.parseメソッドは、引数で渡したJSONである文字列を、ハッシュへと変換するメソッド。
ハッシュに変換すれば、Rubyのプログラムの中でかんたんに扱うことができるようになる。

## JSONへ変換
先程はJSONからハッシュへの変換を行った。次はその逆であるハッシュからJSONへの変換を行う。
ハッシュに対してto_jsonメソッドを呼ぶことでJSONへ変換することができる。

## webページへHTTP POSTメソッドでリクエストをする
例えば、住所を登録するケースで、入力フォームに情報を入れて登録ボタンを押したときに使われる。

```
require "net/http"
require "uri"
require "json"

uri = URI("https://www.example.com")
result = Net::HTTP.post(uri, {mocha: 400}.to_json, "Content-Type" => "application/json")
p result
```

Net::HTTP.postメソッドを呼び出してHTTP POSTリクエストを行っている。
HTTP POSTメソッドは例えば住所の登録など行うので、リクエストとしてデータを送ることが多い。
引数のuriはリクエスト先
{mocha: 400}は送るJSON形式データ
"Content-Type" => "application/json" は送るデータの形式としてJSONを指定している。


