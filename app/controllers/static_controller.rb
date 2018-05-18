class StaticController < ApplicationController
    def index 
        @lectures = Lecture.all     
        @courses = Course.all   
    end

end
