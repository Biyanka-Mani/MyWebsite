class PagesController < ApplicationController
  def home
  end
  def about_us
  end
  def contact
  end
  def dashboard
    @users=User.all
  end
  
end
