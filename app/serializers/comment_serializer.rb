class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :size, :comment, :sneaker_id
end
