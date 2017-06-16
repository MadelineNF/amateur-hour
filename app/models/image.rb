class Image < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :collections, optional: true
end
