class Types::UserType < Types::BaseObject
  description "A user"

  field :email, String, null: false
  field :password, String, null: false
  field :is_super_admin, Boolean, null: false
end
