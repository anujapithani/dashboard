class MainController < ApplicationController
    def index
        @feedbackforms = Feedbackform.all
        @employees = Employee.all
        @registrations = Registration.all
    end  
end
