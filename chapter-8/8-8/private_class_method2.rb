class Foo
    private_class_method def self.a
        "method a"
    end
end
p Foo.a
