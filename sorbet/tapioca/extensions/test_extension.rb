require "sorbet-runtime"
require "./app/models/test_module"

module Tapioca
  module Extensions
    module TestModule
      attr_reader :__tapioca_test_method_calls

      def test_method
        @__tapioca_test_method_calls ||= 0

        @__tapioca_test_method_calls += 1

        super
      end

      ::TestModule::ClassMethods.prepend(self)
    end
  end
end
