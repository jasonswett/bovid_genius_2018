class Genus < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
