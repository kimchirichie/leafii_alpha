Rails.application.routes.draw do

  root to: 'home#landing'

  get '/try', to: 'home#try', as: 'try'
  # get '/submit', to: 'home#form', as: 'form'
  post '/submit', to: 'home#submit', as: 'submit'

  scope '/see' do
    # get '/carter', to: 'see#carter', as: 'carter'
    get '/richard', to: 'see#richard', as: 'richard'
    get '/minch', to: 'see#minch', as: 'minch'
    get '/sinc', to: 'see#sinc', as: 'sinc'
  end

end
