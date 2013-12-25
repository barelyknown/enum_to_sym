module EnumToSym
  module Symbolize
    extend ActiveSupport::Concern

    def is?(status)
      send("#{status}?") if respond_to?("#{status}?")
    end

    module ClassMethods
      def enum(definitions)
        _return = super

        definitions.each do |name, values|
          define_method name do |*args|
            super(*args).try :to_sym
          end
        end

        _return
      end
    end

  end
end