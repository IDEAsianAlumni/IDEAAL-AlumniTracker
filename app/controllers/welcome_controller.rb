class WelcomeController < ApplicationController
  def index
    @arr_groups1 = GroupToUser.all.arr_uid_of_group(@@current_year)
    @groups = Group.by_year
    @directors = User.all # add directors objects here
    @arr_groups = Array.new
    @group_to_users = GroupToUser.all
    @mentor_to_mentees = MentorToMentee.all
    GroupToUser.all.arr_uid_of_group(@@current_year).each do |group|
      
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
    trees = Array.new
    Group.all.each do |g|
      #look for all groups w target year
      groups = {"mentor" => [], "mentee" => []}
      @group_to_users.each do |g2u|
        #find all users who were in target group
        if (g2u.group_id.to_s == g.id.to_s)
          #get mentor or mentee status of user
          @mentor_to_mentees.each do |m2m|
            if (m2m.year.to_s == year.to_s)
              if (m2m.mentor_uid.to_s == g2u.id.to_s)
                groups["mentor"].push(g2u.uid)
              end
              if (m2m.mentee_uid.to_s == g2u.id.to_s)
                groups["mentee"].push(g2u.uid)
              end
            end
          end
        end
      end
      trees.push(groups)
    end
    
    trees.each do |t|
      puts "elem -> " + t.inspect()
    end

    return trees

  end
  helper_method :get_groups_for_year
end
