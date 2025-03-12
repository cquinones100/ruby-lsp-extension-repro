# typed: strict

module Tapioca
  module Compilers
    class TestCompiler < Tapioca::Dsl::Compiler
      extend T::Sig

      ConstantType = type_member {{ fixed: T.class_of(TestModule) }}

      sig { override.returns(T::Enumerable[Module]) }
      def self.gather_constants
        all_classes.select { |c| c < ::TestModule }
      end

      sig { override.void }
      def decorate
        puts "TESTING!!!!!!!"
        puts T.unsafe(constant).__tapioca_test_method_calls

        root.create_path(constant) do |klass|
          klass.create_method("testing_method_2")
        end
      end
    end
  end
end
