require 'csv'

CSV.foreach('listings.csv', :headers => true) do |row|
  row = row.to_hash.reject{ |k| k == 'id' }
  Listing.create!(row)
end