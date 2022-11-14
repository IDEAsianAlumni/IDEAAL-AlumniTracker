class GroupToUser < ApplicationRecord
    validates :uid, presence: true
    validates :group_id, presence: true

    scope :by_group, ->(groupID) { where("group_id = ?", groupID) }
    scope :by_year, ->(year = "2022") { where("year = ?", year) }
end
