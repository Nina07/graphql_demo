class Types::AuthorType < Types::BaseObject
  description "Author record"

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :yob, Int, null: false
  field :is_alive, Boolean, null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

  field :full_name, String, null: false

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  field :coordinates, Types::CoordinatesType, null: false

  field :publication_years, [Int], null: false
end

class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name "AuthorInputType"
  description "All the attributes needed to create/update an author"

  argument :id, ID, required: false
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :yob, Int, required: true
  argument :is_alive, Boolean, required: true
end
