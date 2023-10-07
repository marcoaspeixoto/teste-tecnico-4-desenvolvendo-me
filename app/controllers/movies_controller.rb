require 'csv'

class MoviesController < ApplicationController
  def import_csv
    # Caminho para o arquivo CSV
    csv_file_path = '/home/marco/Documentos/TT 4 - netflix_titles.csv'

    # Ler o CSV e criar registros no banco de dados
    CSV.foreach(csv_file_path, headers: true) do |row|
      Movie.create(row.to_hash)
    end

    render json: { message: 'Dados importados com sucesso!' }
  end

  def index
    # Ordenar os registros por ano de lançamento
    movies = Movie.order(:release_year)

   render json: movies
  end

  def filter_by_year
    # Filtrar por ano de lançamento, se o parâmetro :year estiver presente
    if params[:year]
      movies = Movie.where(release_year: params[:year])
      render json: movies
    else
      render json: { message: 'Parâmetro :year não especificado.' }, status: :bad_request
    end
  end
end
