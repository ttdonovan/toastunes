collection @albums
node(:id) { |album| album.id.to_s }
attributes :title, :artist_name, :thumbnail, :rating
