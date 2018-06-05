class User < ApplicationRecord
  validates :username, length: { maximum: 20 }, uniqueness: true

end
