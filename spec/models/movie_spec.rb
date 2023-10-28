# spec/models/movie_spec.rb
require 'rails_helper'

RSpec.describe Movie, type: :model do

  describe 'CRUD operations' do
    it 'should create a new movie' do
      movie = FactoryBot.build(:movie)
      expect(movie.save).to be true
    end

    it 'should update an existing movie' do
      movie = FactoryBot.create(:movie)
      movie.update(title: 'New Title')
      expect(movie.reload.title).to eq('New Title')
    end

    it 'should delete a movie' do
      movie = FactoryBot.create(:movie)
      expect { movie.destroy }.to change(Movie, :count).by(-1)
    end

    it 'should find a movie by id' do
      movie = FactoryBot.create(:movie)
      found_movie = Movie.find(movie.id)
      expect(found_movie).to eq(movie)
    end
  end
end
