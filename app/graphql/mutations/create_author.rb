class Mutations::CreateAuthor < GraphQL::Schema::Mutation
  null false

  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :yob, Int, required: true
  argument :is_alive, Boolean, required: true

  def resolve(first_name:, last_name:, yob:, is_alive:)
    Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
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
