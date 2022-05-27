class Mutations::CreateAuthor < GraphQL::Schema::Mutation
  null false

  argument :author, Types::AuthorInputType, required: true

  def resolve(author:)
    Author.create author.to_h
  end
end

# create mutation example
# mutation createAuthor($first_name: String!, $last_name: String!, $yob: Int!, $is_alive: Boolean!){
#   createAuthor(firstName: $first_name, lastName: $last_name, yob: $yob, isAlive: $is_alive) {
#     id
#     firstName
#     fullName
#   }
# }
# query variables
# {
#   "firstName": "Anna",
#   "lastName": "Hemingway",
#   "yob": 1989,
#   "isAlive": true
# }

# create mutation with input types
# mutation createAuthor($author: AuthorInputType!){
#   createAuthor(author: $author) {
#     id
#     firstName
#   }
# }
# query variables -
# {
#   "author": {
#     "firstName": "Anna",
#     "lastName": "Hemingway",
#     "yob": 1989,
#     "isAlive": true
#   }
# }
