Rails.application.routes.draw do

  root to: 'home#landing'

  get '/try', to: 'home#try', as: 'try'

  scope '/see' do
    get '/carter', to: 'see#carter', as: 'carter'
    get '/richard', to: 'see#richard', as: 'richard'
    get '/minch', to: 'see#minch', as: 'minch'
  end

end
