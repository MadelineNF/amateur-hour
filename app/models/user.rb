class User < ApplicationRecord
  has_many :collections
  has_many :images
end
