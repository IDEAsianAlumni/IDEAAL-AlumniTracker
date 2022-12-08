class AdminController < ApplicationController
    @@group_current_year = "2022"

    def index
        @Users = User.all
        @mentor_to_mentees = MentorToMentee.all
        @mtor 
        @mtee 
        @groups = Group.all
        @group_to_user = GroupToUser.all
    end

    def display_user(val)
        begin
            @mtor = @Users.find(val)
            return( @mtor.first_name + ' ' + @mtor.last_name )
        rescue
            return ('MISSING')
        end
    end
    helper_method :display_user

    def display_group_members(id)
        @arr_groups = []
        GroupToUser.where(group_id: id).each do |group|
            @users_in_group = User.by_uid(group.uid)
            @arr_groups.push(@users_in_group.first)
        end
        return @arr_groups
    end
    helper_method :display_group_members

    def show
        
    end

    def new

    end

    def edit
    end

    def create

    end

    def update

    end

    def destroy
    end

end
  