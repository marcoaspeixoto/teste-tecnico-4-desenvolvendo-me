Rails.application.routes.draw do
  resources :movies do
    collection do
      post 'import_csv', to: 'movies#import_csv' # Rota para importar o CSV
      get 'sort_by_year', to: 'movies#sort_by_year' # ordenar pelo ano de nascimento
      get 'filter_by_year', to: 'movies#filter_by_year' # Rota para filtrar por ano
      get 'filter_by_media_type', to: 'movies#filter_by_media_type' # Rota para filtrar por tipo de mídia
      get 'filter_by_country', to: 'movies#filter_by_country' # Rota para filtrar por país
    end
  end
end
