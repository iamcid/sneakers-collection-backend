class SneakerSerializer
    include FastJsonApi::ObjectSerializer
    attributes :colorway, :name, :brand, :price, :image
end