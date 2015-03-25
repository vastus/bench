Rails.application.routes.draw do
  # Home
  root("articles#index")

  # Resources
  resources(:articles) do
    resources(:comments)
  end
end

