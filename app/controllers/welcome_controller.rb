class WelcomeController < ApplicationController
  def index
    @year = @@current_year
    @arr_groups1 = GroupToUser.all.arr_uid_of_group(@year)
    @groups = Group.by_year
    @group_year = Group.select(:year).order(:year).distinct
    @directors = User.all # add directors objects here
    @arr_groups = Array.new
    @group_to_users = GroupToUser.all
    @mentor_to_mentees = MentorToMentee.all
    GroupToUser.all.arr_uid_of_group(@year).each do |group|
      
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

  def get_groups_for_year(year)
    @users = User.all
    trees = Array.new
    Group.all.each do |g|
      #look for all groups w target year
      groups = {"mentor" => [], "mentee" => []}
      groups_ids = {"mentor" => [], "mentee" => []}
      @group_to_users.each do |g2u|
        #find all users who were in target group
        if (g2u.group_id.to_s == g.id.to_s)
          #get mentor or mentee status of user
          @mentor_to_mentees.each do |m2m|
            if (m2m.year.to_s == year.to_s)
              if (m2m.mentor_uid.to_s == g2u.id.to_s && groups_ids["mentor"].exclude?(g2u.uid))
                usr = User.where(uid: g2u.uid).first
                groups["mentor"].push( usr.first_name + ' ' + usr.last_name )
                groups_ids["mentor"].push(g2u.uid)
              end
              if (m2m.mentee_uid.to_s == g2u.id.to_s && groups_ids["mentee"].exclude?(g2u.uid))
                usr = User.where(uid: g2u.uid).first
                groups["mentee"].push( usr.first_name + ' ' + usr.last_name )
                groups_ids["mentee"].push(g2u.uid)
              end
            end
          end
        end
      end
      trees.push(groups)
    end
    
    return trees

  end
  helper_method :get_groups_for_year
end
