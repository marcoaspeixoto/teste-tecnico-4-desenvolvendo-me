require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'POST #import_csv' do
    it 'imports CSV data and returns a success message' do
      post :import_csv
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['message']).to eq('Dados importados com sucesso!')
    end
  end

  describe 'GET #index' do
    it 'returns a list of movies sorted by release year' do
      create(:movie, release_year: 2015)
      create(:movie, release_year: 2010)

      get :sort_by_year
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.first['release_year']).to eq(2010)
      expect(movies.second['release_year']).to eq(2015)
    end
  end

  describe 'GET #filter_by_year' do
    it 'returns movies filtered by release year' do
      create(:movie, release_year: 2015)
      create(:movie, release_year: 2010)

      get :filter_by_year, params: { year: 2010 }
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.first['release_year']).to eq(2010)
    end

    it 'returns all movies when no year is specified' do
      create(:movie, release_year: 2015)
      create(:movie, release_year: 2010)

      get :filter_by_year
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.count).to eq(2)
    end
  end

  describe 'GET #filter_by_media_type' do
    it 'returns movies filtered by media type' do
      create(:movie, media_type: 'TV Show')
      create(:movie, media_type: 'Movie')

      get :filter_by_media_type, params: { media_type: 'Movie' }
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.first['media_type']).to eq('Movie')
    end

    it 'returns all movies when no media type is specified' do
      create(:movie, media_type: 'TV Show')
      create(:movie, media_type: 'Movie')

      get :filter_by_media_type
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.count).to eq(2)
    end
  end

  describe 'GET #filter_by_country' do
    it 'returns movies filtered by country' do
      create(:movie, country: 'Canada')
      create(:movie, country: 'United States')

      get :filter_by_country, params: { country: 'United States' }
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.first['country']).to eq('United States')
    end

    it 'returns all movies when no country is specified' do
      create(:movie, country: 'Canada')
      create(:movie, country: 'United States')

      get :filter_by_country
      expect(response).to have_http_status(:success)
      movies = JSON.parse(response.body)
      expect(movies.count).to eq(2)
    end
  end
end
