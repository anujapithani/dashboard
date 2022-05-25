class FeedbackformController < ActionController::Base
    def index
        @feedbackform = Feedbackform.all
        end
        def new
            @feedbackform =  Feedbackform.new
        end
        def create
            feedbackform =  Feedbackform.new(feedbackform_params)
            feedbackform.save 
            redirect_to root_path
        end  
        private
        def feedbackform_params
            params.require(:feedbackform).permit(:name, :rating, :comments)
        end
    end
    