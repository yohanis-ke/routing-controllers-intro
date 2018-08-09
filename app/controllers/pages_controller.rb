class PagesController < ApplicationController

  def welcome
    @header = "This is the welcome page"
    render :about
  end

  def about
    @header = "This is about us page"
  end
end
