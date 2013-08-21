require 'test_helper'

class MeetingTypesControllerTest < ActionController::TestCase
  setup do
    @meeting_type = meeting_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeting_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting_type" do
    assert_difference('MeetingType.count') do
      post :create, meeting_type: { cost: @meeting_type.cost, defult_time: @meeting_type.defult_time, meeting: @meeting_type.meeting, name: @meeting_type.name, phone_call: @meeting_type.phone_call, project_id: @meeting_type.project_id, video_conf: @meeting_type.video_conf }
    end

    assert_redirected_to meeting_type_path(assigns(:meeting_type))
  end

  test "should show meeting_type" do
    get :show, id: @meeting_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting_type
    assert_response :success
  end

  test "should update meeting_type" do
    put :update, id: @meeting_type, meeting_type: { cost: @meeting_type.cost, defult_time: @meeting_type.defult_time, meeting: @meeting_type.meeting, name: @meeting_type.name, phone_call: @meeting_type.phone_call, project_id: @meeting_type.project_id, video_conf: @meeting_type.video_conf }
    assert_redirected_to meeting_type_path(assigns(:meeting_type))
  end

  test "should destroy meeting_type" do
    assert_difference('MeetingType.count', -1) do
      delete :destroy, id: @meeting_type
    end

    assert_redirected_to meeting_types_path
  end
end
