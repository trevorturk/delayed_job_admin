class DelayedJobAdminController < ApplicationController

  layout 'delayed_job_admin'

  before_filter :delayed_job_admin_authentication

  def index
  end

end
