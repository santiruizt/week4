Rails.application.routes.draw do

  root 'site#home'

  get '/text_inspections/new', to: 'text_inspection#new'

  post '/text_inspections', to: 'text_inspection#create'

  get '/asciis/new', to: 'asciis#new'

  post '/asciis/create', to: 'asciis#create'

  get '/lipsum/new', to: 'lipsum#new'

  post 'lipsum', to: 'lipsum#create'

end
