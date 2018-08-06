class MyGraphqlSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end


# MyGraphqlSchema = GraphQL::Schema.define do
#   mutation(Types::MutationType)
#   query(Types::QueryType)
# end