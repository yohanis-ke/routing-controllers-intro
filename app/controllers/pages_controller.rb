class PagesController < ApplicationController
before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page"
    render :about
  end

  def about
    @header = "This is about us page"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten

  end

  def secrets
   magic_word= params[:magic_word]
     if magic_word=="abc"
      render :secrets
     else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to "/welcome"
    end
  end

  def kittens
  end

  def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "https://picsum.photos/#{requested_size}/#{requested_size}"
  end

end
