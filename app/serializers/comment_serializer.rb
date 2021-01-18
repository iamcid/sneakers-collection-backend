class CommentSerializer
    include FastJsonApi::ObjectSerializer
    attributes :size, :comment, :sneaker_id
end