class SneakerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :colorway, :name, :brand, :price, :image
end
