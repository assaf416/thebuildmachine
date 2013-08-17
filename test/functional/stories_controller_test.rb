require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @story = stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post :create, story: { created_by_user_id: @story.created_by_user_id, description: @story.description, functional_test: @story.functional_test, iteration_id: @story.iteration_id, name: @story.name, primary_solver_user_id: @story.primary_solver_user_id, project_id: @story.project_id, secondary_solver_user_id: @story.secondary_solver_user_id, status: @story.status, tested_by_user_id: @story.tested_by_user_id }
    end

    assert_redirected_to story_path(assigns(:story))
  end

  test "should show story" do
    get :show, id: @story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story
    assert_response :success
  end

  test "should update story" do
    put :update, id: @story, story: { created_by_user_id: @story.created_by_user_id, description: @story.description, functional_test: @story.functional_test, iteration_id: @story.iteration_id, name: @story.name, primary_solver_user_id: @story.primary_solver_user_id, project_id: @story.project_id, secondary_solver_user_id: @story.secondary_solver_user_id, status: @story.status, tested_by_user_id: @story.tested_by_user_id }
    assert_redirected_to story_path(assigns(:story))
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete :destroy, id: @story
    end

    assert_redirected_to stories_path
  end
end
