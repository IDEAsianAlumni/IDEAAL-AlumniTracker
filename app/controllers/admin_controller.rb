class AdminController < ApplicationController
    def index
        @users = User.all
        @mentor_to_mentees = MentorToMentee.all
        @mtor 
        @mtee 
    end

    def display_user(val)
        begin
            @mtor = @users.find(val)
            return( @mtor.first_name + ' ' + @mtor.last_name )
        rescue
            return ('MISSING')
        end
    end
    helper_method :display_user

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
  