class Types::ErrorType < Types::BaseObject
  description "Active record errors"

  field :field_name, String, null: false
  field :errors, [String], null: false
end

# check errors during Mutation, reflects active record errors
# mutation createAuthor($author: AuthorInputType!) {
#   createAuthor(author: $author) {
#     fullName
#     errors {
#       fieldName
#       errors
#     }
#   }
# }
# query variable ( don't supply one field)
# {
#   "author": {
#     "firstName": "Poo",
#     "yob": 2000,
#     "isAlive": true
#   }
# }
