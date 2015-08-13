The API endpoint at /listings returns a GeoJSON of listings that were seeded into a database from listings.csv. There are six optional url params: min_price, max_price, min_bed, max_bed, min_bath, and max_bath.

A form at the root url (/) allows users to enter params to filter the listings results. Could definitely make this prettier, and more user friendly with dropdowns instead of text fields.

Deployed to Heroku here: http://murmuring-tor-9305.herokuapp.com/