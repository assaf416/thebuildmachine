require 'test_helper'

class IterationsControllerTest < ActionController::TestCase
  setup do
    @iteration = iterations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iterations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iteration" do
    assert_difference('Iteration.count') do
      post :create, iteration: { current: @iteration.current, developers: @iteration.developers, ends_on: @iteration.ends_on, name: @iteration.name, project_id: @iteration.project_id, starts_on: @iteration.starts_on, testers: @iteration.testers }
    end

    assert_redirected_to iteration_path(assigns(:iteration))
  end

  test "should show iteration" do
    get :show, id: @iteration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iteration
    assert_response :success
  end

  test "should update iteration" do
    put :update, id: @iteration, iteration: { current: @iteration.current, developers: @iteration.developers, ends_on: @iteration.ends_on, name: @iteration.name, project_id: @iteration.project_id, starts_on: @iteration.starts_on, testers: @iteration.testers }
    assert_redirected_to iteration_path(assigns(:iteration))
  end

  test "should destroy iteration" do
    assert_difference('Iteration.count', -1) do
      delete :destroy, id: @iteration
    end

    assert_redirected_to iterations_path
  end
end
