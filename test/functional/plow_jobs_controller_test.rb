require 'test_helper'

class PlowJobsControllerTest < ActionController::TestCase
  setup do
    @plow_job = plow_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plow_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plow_job" do
    assert_difference('PlowJob.count') do
      post :create, plow_job: { business_id: @plow_job.business_id, resident_id: @plow_job.resident_id }
    end

    assert_redirected_to plow_job_path(assigns(:plow_job))
  end

  test "should show plow_job" do
    get :show, id: @plow_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plow_job
    assert_response :success
  end

  test "should update plow_job" do
    put :update, id: @plow_job, plow_job: { business_id: @plow_job.business_id, resident_id: @plow_job.resident_id }
    assert_redirected_to plow_job_path(assigns(:plow_job))
  end

  test "should destroy plow_job" do
    assert_difference('PlowJob.count', -1) do
      delete :destroy, id: @plow_job
    end

    assert_redirected_to plow_jobs_path
  end
end
