class Types::ArticleType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  field :text, String, null: true
  field :comments, [Types::CommentType], null: true, description: "This Article's comments, or null if this post has comments disabled."
end