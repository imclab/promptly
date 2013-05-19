class HomeController < ApplicationController
  def index
    add_user
    list_upcoming
    list_recent
  end

private
  def add_user
  end

  def list_upcoming
  	# list queued
  end

  # GET /conversations
  def list_recent
  	@recents = Conversation.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recents }
    end
  end

end
