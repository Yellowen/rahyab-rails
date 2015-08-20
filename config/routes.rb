RahyabRails::Engine.routes.draw do
  in_dashboard do
    get 'sms'
    post 'sms'
  end
end
