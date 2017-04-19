class HelloWorld
  def self.hello(name = nil)
    p "Hello, #{name || 'World'}!"  
  end
end
