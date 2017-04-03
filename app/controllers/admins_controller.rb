class AdminsController < ApplicationController
  before_action :check_admin

  def index
    @topics = Topic.all
  end

  private
  def check_admin
    if !current_user.has_role? :admin
        redirect_to root_path
    end
  end
end
