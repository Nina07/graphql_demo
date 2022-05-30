class Types::UserType < Types::BaseObject
  description "A user"

  field :email, String, null: false
  field :password, String, null: false
  field :is_super_admin, Boolean, null: false

  def self.visible?(context) #hides current_user info from schema if the user is not logged in
    !!context[:current_user]
  end
end
