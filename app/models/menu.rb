class Menu < ApplicationRecord
  belongs_to :diner
  has_many :items
end
