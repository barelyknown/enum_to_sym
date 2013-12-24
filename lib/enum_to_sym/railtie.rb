module EnumToSym
  class Railtie < Rails::Railtie
    initializer 'enum_to_sym.initialize' do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Base.send :include, Symbolize if Rails.version >= "4.1"
      end
    end
  end
end
