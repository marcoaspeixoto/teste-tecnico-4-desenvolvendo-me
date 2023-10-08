Rails.application.routes.draw do
  resources :movies do
    collection do
      post 'import_csv' # Rota para importar o CSV
      get 'filter_by_year', to: 'movies#filter_by_year' # Rota para filtrar por ano
      get 'filter_by_media_type', to: 'movies#filter_by_media_type' # Rota para filtrar por tipo de mídia
    end
  end
end
