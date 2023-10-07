Rails.application.routes.draw do
  resources :movies do
    collection do
      post 'import_csv' # Rota para importar o CSV
      get 'filter', to: 'movies#filter_by_year' # Rota para filtrar por ano
    end
  end
end
