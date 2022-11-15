class GroupToUser < ApplicationRecord
    validates :uid, presence: true
    validates :group_id, presence: true
end
