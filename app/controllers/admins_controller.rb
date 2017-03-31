class AdminsController < ApplicationController
  def index
    @topics = Topic.all
  end
end
