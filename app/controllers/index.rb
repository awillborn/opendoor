get '/' do
  erb :index
end

post '/listings' do
  listings = Listing.search(params)
  features = []

  listings.each do |listing|
    features << listing.to_feature_json
  end

  json({
    "type" => "FeatureCollection",
    "features" => features
  })
end