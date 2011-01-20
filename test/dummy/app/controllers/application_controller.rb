class ApplicationController < ActionController::Base
  protect_from_forgery

  def delayed_job_admin_authentication
    render :text => "unauthorized" if params['unauthorized']
  end

end
