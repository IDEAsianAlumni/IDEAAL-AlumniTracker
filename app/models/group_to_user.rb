class GroupToUser < ApplicationRecord
    validates :MentorID, presence: true
    validates :GroupID, presence: true
end
