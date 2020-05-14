Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/average', to: 'arithmetics#average'
  post '/factorial', to: 'arithmetics#factorial'
  post '/power', to: 'arithmetics#power'
  post '/abs', to: 'arithmetics#abs'
  post '/reciprocal', to: 'arithmetics#reciprocal'
  post '/linear', to: 'arithmetics#linear'
  post '/exp', to: 'arithmetics#exp'
  post '/erf', to: 'arithmetics#erf'
  post '/erfc', to: 'arithmetics#erfc'
  post '/frexp', to: 'arithmetics#frexp'
  post '/ldexp', to: 'arithmetics#ldexp'
  post '/hypotenuse', to: 'arithmetics#hypotenuse'
  post '/hypot', to: 'arithmetics#hypotenuse'
  post '/log', to: 'arithmetics#log'
  post '/lgamma', to: 'arithmetics#lgamma'
  post '/cos', to: 'arithmetics#cos'
  post '/sin', to: 'arithmetics#sin'
  post '/tan', to: 'arithmetics#tan'
  post '/acos', to: 'arithmetics#acos'
  post '/acosh', to: 'arithmetics#acosh'
  post '/cosh', to: 'arithmetics#cosh'
  post '/asin', to: 'arithmetics#asin'
  post '/median', to: 'arithmetics#median'
  post '/mean', to: 'arithmetics#mean'
  post '/mode', to: 'arithmetics#mode'
  post '/range', to: 'arithmetics#range'

  namespace 'documentation', path: '/' do
  	resources :documentation, only: %i[index]
  end
end
