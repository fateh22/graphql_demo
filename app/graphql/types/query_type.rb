class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  description "The query root of this schema"
  field :test_field, String, null: false,
    description: "An example field added by the generator"
  def test_field
    "Hello World!"
  end
  # First describe the field signature:
  field :post, Types::PostType, null: true do
    description "Find a post by ID"
    argument :id, ID, required: true
  end

  # Then provide an implementation:
  def post(id:)
    Post.find(id)
  end

  field :posts, [Types::PostType], null: true  do
    description "All Posts"
  end

  # All post
  def posts
    Post.all
  end

  field :articles, [Types::ArticleType], null: false, description: "All Artcles"


  # All Artcles
  def articles
    Article.all
  end

end
