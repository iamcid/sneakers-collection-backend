class CommentSerializer
  include JSONAPI::Serializer
  attributes :size, :comment, :sneaker_id
end
