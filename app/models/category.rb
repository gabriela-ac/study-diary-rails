class Category < ApplicationRecord
  has_many :study_items, dependent: :destroy
end
