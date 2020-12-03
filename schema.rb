require 'graphql'
require_relative './query.rb'
require_relative './mutation.rb'

class GameAppSchema < GraphQL::Schema
  query QueryType
  mutation MutationType
end
