require 'test_helper'

class MeetingsControllerTest < ActionController::TestCase
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting" do
    assert_difference('Meeting.count') do
      post :create, meeting: { approved_user_names: @meeting.approved_user_names, billable: @meeting.billable, body: @meeting.body, cost: @meeting.cost, denided_user_names: @meeting.denided_user_names, ends_at: @meeting.ends_at, invited_user_names: @meeting.invited_user_names, kind: @meeting.kind, location: @meeting.location, meeting_notes: @meeting.meeting_notes, meeting_type_id: @meeting.meeting_type_id, private: @meeting.private, project_id: @meeting.project_id, related_stories: @meeting.related_stories, related_users: @meeting.related_users, starts_at: @meeting.starts_at, starts_on: @meeting.starts_on, title: @meeting.title, user_id: @meeting.user_id }
    end

    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should show meeting" do
    get :show, id: @meeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting
    assert_response :success
  end

  test "should update meeting" do
    put :update, id: @meeting, meeting: { approved_user_names: @meeting.approved_user_names, billable: @meeting.billable, body: @meeting.body, cost: @meeting.cost, denided_user_names: @meeting.denided_user_names, ends_at: @meeting.ends_at, invited_user_names: @meeting.invited_user_names, kind: @meeting.kind, location: @meeting.location, meeting_notes: @meeting.meeting_notes, meeting_type_id: @meeting.meeting_type_id, private: @meeting.private, project_id: @meeting.project_id, related_stories: @meeting.related_stories, related_users: @meeting.related_users, starts_at: @meeting.starts_at, starts_on: @meeting.starts_on, title: @meeting.title, user_id: @meeting.user_id }
    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should destroy meeting" do
    assert_difference('Meeting.count', -1) do
      delete :destroy, id: @meeting
    end

    assert_redirected_to meetings_path
  end
end
