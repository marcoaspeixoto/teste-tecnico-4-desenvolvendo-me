class MoviesController < ApplicationController
  def import_csv
    # Caminho para o arquivo CSV
    csv_file_path = 'path_para_seu_arquivo.csv'

    # Ler o CSV e criar registros no banco de dados
    CSV.foreach(csv_file_path, headers: true) do |row|
      Movie.create(row.to_hash)
    end

    render json: { message: 'Dados importados com sucesso!' }
  end

  def index
    # Ordenar os registros por ano de lançamento
    movies = Movie.order(:release_year)

    # Aplicar filtros, se necessário
    if params[:year]
      movies = movies.where(release_year: params[:year])
    end

    if params[:genre]
      movies = movies.where('listed_in LIKE ?', "%#{params[:genre]}%")
    end

    if params[:country]
      movies = movies.where(country: params[:country])
    end

    render json: movies
  end
end
