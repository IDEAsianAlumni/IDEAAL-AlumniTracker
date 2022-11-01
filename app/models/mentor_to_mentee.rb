class MentorToMentee < ApplicationRecord
    validates :mentor_uid, presence: true
    validates :mentee_uid, presence: true
    validates :year, presence: true
end
