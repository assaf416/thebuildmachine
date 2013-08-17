require 'test_helper'

class StroysControllerTest < ActionController::TestCase
  setup do
    @stroy = stroys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stroys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stroy" do
    assert_difference('Stroy.count') do
      post :create, stroy: { created_by_user_id: @stroy.created_by_user_id, description: @stroy.description, functional_test: @stroy.functional_test, iteration_id: @stroy.iteration_id, name: @stroy.name, primary_solver_user_id: @stroy.primary_solver_user_id, project_id: @stroy.project_id, secondary_solver_user_id: @stroy.secondary_solver_user_id, status: @stroy.status, tested_by_user_id: @stroy.tested_by_user_id }
    end

    assert_redirected_to stroy_path(assigns(:stroy))
  end

  test "should show stroy" do
    get :show, id: @stroy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stroy
    assert_response :success
  end

  test "should update stroy" do
    put :update, id: @stroy, stroy: { created_by_user_id: @stroy.created_by_user_id, description: @stroy.description, functional_test: @stroy.functional_test, iteration_id: @stroy.iteration_id, name: @stroy.name, primary_solver_user_id: @stroy.primary_solver_user_id, project_id: @stroy.project_id, secondary_solver_user_id: @stroy.secondary_solver_user_id, status: @stroy.status, tested_by_user_id: @stroy.tested_by_user_id }
    assert_redirected_to stroy_path(assigns(:stroy))
  end

  test "should destroy stroy" do
    assert_difference('Stroy.count', -1) do
      delete :destroy, id: @stroy
    end

    assert_redirected_to stroys_path
  end
end
