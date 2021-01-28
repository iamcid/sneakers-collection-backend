class CommentSerializer
  include JSONAPI::Serializer
  attributes :message, :sneaker_id, :sneaker
end
