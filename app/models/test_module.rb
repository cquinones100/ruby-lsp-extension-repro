module TestModule
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def test_method
      puts "This is a test method"
    end
  end
end
