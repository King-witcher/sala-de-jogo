
Rails.application.routes.draw do
  root 'home#index'

  get 'request_lecture/index'
  get '/admin'                  => 'admin#index'
  post '/admin'                 => 'admin#login'
  delete '/admin'               => 'admin#logout'

  get '/admin/coaches'          => 'admin#coaches'
  get '/admin/new_coach'        => 'admin#new_coach_form'
  post '/admin/new_coach'       => 'admin#new_coach'
  delete '/admin/coaches/:id'   => 'admin#delete_coach'

  get '/admin/requests'         => 'admin#requests'
  post '/admin/requests/:id'    => 'admin#accept_request'
  delete '/admin/requests/:id'  => 'admin#delete_request'

  get '/coach'                  => 'coach#index'
  get '/coach/login'            => 'coach#login_form'
  post '/coach/login'           => 'coach#login'
  delete '/coach/login'         => 'coach#logout'

  get '/coach/lectures'         => 'coach#lectures'
  post '/coach/lectures'        => 'coach#finish_lecture'

  get '/coach/change_password'  => 'coach#new_password_form'
  post '/coach/change_password' => 'coach#change_password'

  get '/lecture'                => 'request_lecture#index'
  post '/lecture'               => 'request_lecture#_request'
end
