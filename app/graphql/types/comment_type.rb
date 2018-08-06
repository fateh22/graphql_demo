class Types::CommentType < Types::BaseObject
    field :id, ID, null: false
    field :commenter, String, null: false
    field :body, String, null: false
    field :article, Types::ArticleType, null: false
end