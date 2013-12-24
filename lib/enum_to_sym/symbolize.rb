module EnumToSym
  module Symbolize
    extend ActiveSupport::Concern

    module ClassMethods
      def enum(definitions)
        _return = super

        definitions.each do |name, values|
          define_method name do |*args|
            super(*args).to_sym
          end
        end

        _return
      end
    end

  end
end