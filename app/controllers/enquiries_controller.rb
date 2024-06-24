class EnquiriesController < ApplicationController
    def new
        @enquiry=Enquiry.new
    end
    def create
        @enquiry=Enquiry.new(enquiry_params)
    
        if @enquiry.save
            flash[:notice]="Message Send Successfully"
            redirect_to new_enquiry_path
        else
            flash[:alert]="Message is not Send "
            render new_enquiry_path(@enquiry) , status: :unprocessable_entity
        end
    end
    private 
    def enquiry_params
        params.require(:enquiry).permit(:firstname,:lastname,:email,:country,:gender,:message,:subscription)
    end
end
