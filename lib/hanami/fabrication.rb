require "fabrication"
require "hanami/fabrication/version"
require "hanami/utils/class"
require "hanami"

module Fabrication
  module Generator
    class Hanami < Base
      def self.supports?(klass)
        defined?(::Hanami::Entity) && klass.ancestors.include?(::Hanami::Entity)
      end

      def build_instance
        self._instance = _klass.new(_attributes)
      end

      protected

      def persist
        self._instance = repository.create(_instance.to_hash)
      end

      private

      def repository
        ::Hanami::Utils::Class.load!("#{_klass}Repository").new
      end
    end
  end
end

Fabrication.configure do |config|
  config.path_prefix = Hanami.root
  config.fabricator_path = 'spec/support/fabricators'
  config.generators << Fabrication::Generator::Hanami
end
