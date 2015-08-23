RahyabRails::Engine.routes.draw do
  in_dashboard do
    resources :rahyab_rails/numbers
    scope :sms do
      get 'quick_send', to: 'sms#new_quick_send', as: 'sms_quick_send'
      post 'quick_send', to: 'sms#quick_send'
    end
  end
end
