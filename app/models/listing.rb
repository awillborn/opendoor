class Listing < ActiveRecord::Base
  def self.search(params)
    listings = scoped

    listings = listings.where("price <= ?", params[:max_price])    unless params[:max_price].blank?
    listings = listings.where("price >= ?", params[:min_price])    unless params[:min_price].blank?
    listings = listings.where("bedrooms <= ?", params[:max_bed])   unless params[:max_bed].blank?
    listings = listings.where("bedrooms >= ?", params[:min_bed])   unless params[:min_bed].blank?
    listings = listings.where("bathrooms <= ?", params[:max_bath]) unless params[:max_bath].blank?
    listings = listings.where("bathrooms >= ?", params[:min_bath]) unless params[:min_bath].blank?

    listings
  end

  def to_feature_json
    {
      "type"       => "Feature",
      "geometry"   => { "type" => "Point", "coordinates" => [ lng.to_f, lat.to_f ] },
      "properties" => {
        "id"        => id,
        "price"     => price,
        "street"    => street,
        "bedrooms"  => bedrooms,
        "bathrooms" => bathrooms,
        "sq_ft"     => sq_ft
      }
    }
  end
end