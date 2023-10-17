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

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def filter_by_year
    # Filtrar por ano de lançamento, se o parâmetro :year estiver presente
    if params[:year]
      movies = Movie.where(release_year: params[:year])
    else
      # Se nenhum ano for especificado, retorna todos os filmes
      movies = Movie.all
    end

    render json: movies
  end

  def filter_by_media_type
    # Filtra os filmes por tipo de mídia se o parâmetro 'media_type' estiver presente
    if params[:media_type]
      movies = Movie.where(media_type: params[:media_type])
    else
      # Se nenhum tipo de mídia for especificado, retorna todos os fimes
      movies = Movie.all
    end

    render json: movies
  end

  def filter_by_country
    # Filtra os filmes por país se o parâmetro 'country' estiver presente
    if params[:country]
      movies = Movie.where('country LIKE ?', "%#{params[:country]}%")
    else
      # Se nenhum país for especificado, retorna todos os filmes
      movies = Movie.all
    end

    render json: movies
  end
end
