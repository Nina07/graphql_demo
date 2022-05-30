class Session < ApplicationRecord
  belongs_to :user

  before_create do
    self.key = SecureRandom.hex(40)
  end
end

# user login
# {
#   login(email: "a@b.c", password: '1')
# }
#
# retrieving user post login
# {
#   author(id: 1) {
#     firstName
#     id
#     createdAt
#     fullName
#     coordinates {
#       latitude
#       longitude
#     }
#     publicationYears
#   }
# }
