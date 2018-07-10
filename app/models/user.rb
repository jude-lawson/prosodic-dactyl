class User < ApplicationRecord
  validates_presence_of :full_name, :name, :email, :username

  enum role: %i[user admin owner]
end
