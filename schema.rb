require 'graphql'
require_relative 'query'

class GameAppSchema < GraphQL::Schema
  query QueryType
end
