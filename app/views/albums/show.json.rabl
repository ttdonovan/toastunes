object @album
node(:id) { |album| album.id.to_s }
attributes :title, :artist_name, :cover, :compilation, :rating, :genre
child @tracks do
  node(:id) { |track| track.id.to_s }
  attributes :title, :track
end
