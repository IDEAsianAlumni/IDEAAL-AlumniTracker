class Group < ApplicationRecord
    has_many :GroupToUser

    validates :year, presence: true
    validates :group_name, presence: true
end
