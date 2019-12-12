class HomeController < ApplicationController
  before_action :check_current_user, only: [:index]
  def index
  end
end
