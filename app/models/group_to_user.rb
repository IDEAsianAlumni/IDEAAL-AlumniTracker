class GroupToUser < ApplicationRecord
    validates :uid, presence: true
    validates :group_id, presence: true

    scope :by_group, ->(groupID) { where("group_id = ?", groupID) }

    def self.uid_of_group(groupID) 
        return_arr = Array.new
        GroupToUser.where(group_id: groupID).select(:uid).each do |user_id|
            return_arr.push(user_id.uid)
        end
        return return_arr
    end

    def self.arr_uid_of_group(year)
        arr_groups = Array.new
        Group.by_year(year).each do |group|
            group_to_users = GroupToUser.uid_of_group(group.id)
            arr_groups.push(group_to_users)
        end
        puts  "arr_group: #{arr_groups}"
        return arr_groups
    end
end
