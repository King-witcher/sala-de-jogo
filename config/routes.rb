Rails.application.routes.draw do
  get '/admin'                  => 'admin#index'
  post '/admin'                 => 'admin#login'
  delete '/admin'               => 'admin#logout'

  get '/admin/coaches'          => 'admin#coaches'
  get '/admin/new_coach'        => 'admin#new_coach_form'
  post '/admin/new_coach'       => 'admin#new_coach'
  delete '/admin/coaches/:id'   => 'admin#delete_coach'

  get '/admin/requests'         => 'admin#requests'
  post '/admin/requests/accept' => ''

  root 'home#index'
end
