class Mutations::ArticleMutation < Mutations::BaseMutation
  null true

  argument :title, String, required: true
  argument :text, String, required: true
  
  field :article, Types::ArticleType, null: true
  field :errors, [String], null: false

  def resolve(title:, text:)
    article = Article.new( title: title, text: text )
    if article.save
      {
        article: article,
        errors: [],
      }
    else
      {
        article: nil,
        errors: article.errors.full_messages
      }
    end
  end
end