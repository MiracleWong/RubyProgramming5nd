class HelloWorld
    Version = "1.0"
    def initialize(myname = "Ruby")
        @name = myname  # 初始化实例变量
    end
    def hello
        puts "Hello World! I am #{@name}"
    end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello
p HelloWorld::Version