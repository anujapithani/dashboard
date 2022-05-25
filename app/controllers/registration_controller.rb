class RegistrationController < ActionController::Base
    def index
    @registrations = Registration.all
    end
    def new
        @registration =  Registration.new
    end
    def create
        registration =  Registration.new(registration_params)
        registration.save 
        redirect_to root_path
    end  
    private
    def registration_params
        params.require(:registration).permit(:name, :email, :userid)
    end
end
