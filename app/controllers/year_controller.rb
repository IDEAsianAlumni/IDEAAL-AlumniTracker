class YearController < WelcomeController
  def _2022
    @year = "2022"
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
  
  def _2023
    @year = "2023"
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

  def _2024
    @year = "2024"
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

  def _2025
    @year = "2025"
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

  def _2026
    @year = "2026"
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

  def _2027
    @year = "2027"
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

  def _2028
    @year = "2028"
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

  def _2029
    @year = "2029"
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

  def _2030
    @year = "2030"
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
end
