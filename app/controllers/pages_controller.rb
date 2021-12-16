class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :configure_permitted_parameters, if: :devise_controller?
  def home
  end

  def dashboard
    @user = current_user
  end

  def spaceport
    @user = current_user
  end
end
