require 'test_helper'

class ContestsControllerTest < ActionController::TestCase
  setup do
    @contest = contests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest" do
    assert_difference('Contest.count') do
      post :create, contest: { binary_data: @contest.binary_data, content_type: @contest.content_type, description: @contest.description, enddate: @contest.enddate, name: @contest.name, startdate: @contest.startdate, url: @contest.url, user_id: @contest.user_id }
    end

    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should show contest" do
    get :show, id: @contest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest
    assert_response :success
  end

  test "should update contest" do
    patch :update, id: @contest, contest: { binary_data: @contest.binary_data, content_type: @contest.content_type, description: @contest.description, enddate: @contest.enddate, name: @contest.name, startdate: @contest.startdate, url: @contest.url, user_id: @contest.user_id }
    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should destroy contest" do
    assert_difference('Contest.count', -1) do
      delete :destroy, id: @contest
    end

    assert_redirected_to contests_path
  end
end
