class PagesController < ApplicationController

  def welcome
    @header = "This is the welcome page"
    render :about
  end

  def about
    @header = "This is about us page"
  end

  def kitten
    @header = "This is the kitten page"
    requested_size = params[:size]
    @kitten_url = "https://picsum.photos/#{requested_size}/#{requested_size}"
  end
end
