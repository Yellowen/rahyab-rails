Faalis::Routes.draw(::RahyabRails::Engine) do

  plugin do
  end

  faalis do
    in_dashboard do
      namespace :rahyab_rails do
        resources :messages do
          collection do
            get 'bulk', to: 'messages#bulk', as: :bulk
            post 'bulk', to: 'messages#bulk_send'
          end
        end
        resources :service_numbers
      end
    end
  end
end
