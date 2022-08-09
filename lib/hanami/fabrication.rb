require "fabrication"
require "hanami/fabrication/version"
require "hanami/utils/class"

module Fabrication
  module Generator
    class Hanami < Base
      def self.supports?(klass)
        defined?(::Hanami::Entity) && klass.ancestors.include?(::Hanami::Entity)
      end

      def build_instance
        self._instance = resolved_class.new(_attributes)
      end

      protected

      def persist
        self._instance = repository.create(_instance.to_hash)
      end

      private

      def repository
        ::Hanami::Utils::Class.load!("#{resolved_class}Repository").new
      end
    end
  end
end

Fabrication.configure do |config|
  config.generators << Fabrication::Generator::Hanami
end
