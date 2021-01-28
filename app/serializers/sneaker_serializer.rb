class SneakerSerializer
  include JSONAPI::Serializer
  attributes :colorway, :name, :brand, :price, :image, :comments
end
