RahyabRails::Engine.routes.draw do
  in_dashboard do
    scope :rahyab_rails do
      resources :messages do
        collection do
          get 'bulk', to: 'rahyab_rails/messages#bulk', as: :bulk
        end
      end
      resources :service_numbers
    end
  end
end
