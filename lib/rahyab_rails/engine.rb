module RahyabRails
  class Engine < ::Rails::Engine
    isolate_namespace RahyabRails
    engine_name 'rahyab_rails'

    # Map `api` to `API` in Rails autoload
    ActiveSupport::Inflector.inflections(:en) do |inflect|
      inflect.acronym 'SMS'
    end
  end
end
