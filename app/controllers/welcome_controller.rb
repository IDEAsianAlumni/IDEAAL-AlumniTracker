class WelcomeController < ApplicationController
  def index

    @arr_groups1 = GroupToUser.all.arr_uid_of_group("2022")
    @groups = Group.by_year
    @directors = User.all # add directors objects here
    @arr_groups = Array.new
    GroupToUser.all.arr_uid_of_group("2022").each do |group|
      
      members = Array.new
      group.each do |uid|
        
        User.where(uid: uid).each do |user|
          member_name = user.first_name + " " + user.last_name
          puts  "user: #{user}"
          members.push(member_name)
        end
      end
      
      puts  "members: #{members}"
      @arr_groups.push(members)
    end

  end
end
