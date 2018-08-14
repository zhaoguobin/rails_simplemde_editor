Rails.application.routes.draw do
  namespace :simplemde do
    post "/upload" => "assets#create"
  end
end
