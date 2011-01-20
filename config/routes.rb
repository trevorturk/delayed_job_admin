Rails.application.routes.draw do
  match 'delayed_job_admin' => 'delayed_job_admin#index', :as => 'delayed_job_admin'
end
