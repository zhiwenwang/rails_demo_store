class Backend::DashboardController < ApplicationController

  layout 'backend'

  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def index
    authorize! :manage, :all
  end
end
