class DashboardController < ApplicationController
  def index
    @users = User.all.count
  end
end
