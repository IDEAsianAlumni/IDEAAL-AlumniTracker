class Group < ApplicationRecord
    has_many :GroupToUser

    validates :year, presence: true
    validates :group_name, presence: true

    scope :by_year, ->(year = "2022") { where("year = ?", year) }
end
