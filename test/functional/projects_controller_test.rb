require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { created_by_user_id: @project.created_by_user_id, description: @project.description, icon: @project.icon, name: @project.name, production_server_url: @project.production_server_url, project_template_id: @project.project_template_id, stageing_server_url: @project.stageing_server_url, test_server_url: @project.test_server_url }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project, project: { created_by_user_id: @project.created_by_user_id, description: @project.description, icon: @project.icon, name: @project.name, production_server_url: @project.production_server_url, project_template_id: @project.project_template_id, stageing_server_url: @project.stageing_server_url, test_server_url: @project.test_server_url }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
