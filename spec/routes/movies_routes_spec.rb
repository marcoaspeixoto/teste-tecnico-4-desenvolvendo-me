# spec/routes/movies_routes_spec.rb
require 'rails_helper'

RSpec.describe 'Movies Routes', type: :routing do
  it 'routes POST import_csv to movies#import_csv' do
    expect(post: '/movies/import_csv').to route_to('movies#import_csv')
  end

  it 'routes GET filter_by_year to movies#filter_by_year' do
    expect(get: '/movies/filter_by_year').to route_to('movies#filter_by_year')
  end

  it 'routes GET filter_by_media_type to movies#filter_by_media_type' do
    expect(get: '/movies/filter_by_media_type').to route_to('movies#filter_by_media_type')
  end

  it 'routes GET filter_by_country to movies#filter_by_country' do
    expect(get: '/movies/filter_by_country').to route_to('movies#filter_by_country')
  end
end
