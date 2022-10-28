class MentorsController < ApplicationController
  
    def index
      @mentor_to_mentees = Mentor_To_Mentee.all
    end

  end
  