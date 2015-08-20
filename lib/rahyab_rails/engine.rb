module RahyabRails
  class Engine < ::Rails::Engine
    isolate_namespace RahyabRails

    # Map `api` to `API` in Rails autoload
    ActiveSupport::Inflector.inflections(:en) do |inflect|
      inflect.acronym 'SMS'
    end
  end
end
