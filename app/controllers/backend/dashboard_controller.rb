class Backend::DashboardController < Backend::BaseController
  def index
    authorize! :manage, :all
  end
end
