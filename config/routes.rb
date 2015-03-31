Rails.application.routes.draw do
  # Home
  root("articles#index")

  # Resources
  resources(:articles)
  resources(:comments, :only => [:create])
end

