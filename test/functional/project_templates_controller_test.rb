require 'test_helper'

class ProjectTemplatesControllerTest < ActionController::TestCase
  setup do
    @project_template = project_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_template" do
    assert_difference('ProjectTemplate.count') do
      post :create, project_template: { application: @project_template.application, description: @project_template.description, git_url: @project_template.git_url, manual: @project_template.manual, name: @project_template.name }
    end

    assert_redirected_to project_template_path(assigns(:project_template))
  end

  test "should show project_template" do
    get :show, id: @project_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_template
    assert_response :success
  end

  test "should update project_template" do
    put :update, id: @project_template, project_template: { application: @project_template.application, description: @project_template.description, git_url: @project_template.git_url, manual: @project_template.manual, name: @project_template.name }
    assert_redirected_to project_template_path(assigns(:project_template))
  end

  test "should destroy project_template" do
    assert_difference('ProjectTemplate.count', -1) do
      delete :destroy, id: @project_template
    end

    assert_redirected_to project_templates_path
  end
end
