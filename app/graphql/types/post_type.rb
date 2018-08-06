class Types::PostType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  #field :rating, Integer, null: false
  #field :comments, [Types::CommentType], null: false
end
