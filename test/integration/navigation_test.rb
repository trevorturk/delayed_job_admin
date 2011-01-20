require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase

  setup do
    Delayed::Job.delete_all
  end

  test "dummy rails app" do
    assert_kind_of Dummy::Application, Rails.application
  end

  test "index if not authorized" do
    visit delayed_job_admin_path(:unauthorized => true)
    assert_match 'unauthorized', page.body
  end

  test "index with no jobs" do
    visit delayed_job_admin_path

    assert_match 'delayed_job_admin', page.body
    assert_match 'Delayed::Job.count: 0', page.body
  end

  test "index with jobs" do
    Delayed::Job.enqueue PutsJob.new('test')

    visit delayed_job_admin_path

    assert_match 'Delayed::Job.count: 1', page.body
    assert_match 'PutsJob', page.body
  end

  test "index with failed jobs" do
    Delayed::Job.enqueue FailJob.new('test')
    Delayed::Worker.new.work_off

    visit delayed_job_admin_path

    assert_match 'Delayed::Job.count: 1', page.body
    assert_match 'FailJob', page.body
  end

end
