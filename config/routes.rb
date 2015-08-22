RahyabRails::Engine.routes.draw do
  in_dashboard do
    scope :sms do
      get 'quick_send', as: 'sms_quick_send'
      post 'quick_send'
    end
  end
end
