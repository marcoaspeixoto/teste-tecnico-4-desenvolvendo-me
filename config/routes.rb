Rails.application.routes.draw do
  resources :movies do
    collection do
      post 'import_csv' # Rota para importar o CSV
    end
  end
end
