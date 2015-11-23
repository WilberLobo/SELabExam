require 'test_helper'

class ProjectmembersControllerTest < ActionController::TestCase
  setup do
    @projectmember = projectmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectmember" do
    assert_difference('Projectmember.count') do
      post :create, projectmember: { email: @projectmember.email, project_id: @projectmember.project_id }
    end

    assert_redirected_to projectmember_path(assigns(:projectmember))
  end

  test "should show projectmember" do
    get :show, id: @projectmember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectmember
    assert_response :success
  end

  test "should update projectmember" do
    patch :update, id: @projectmember, projectmember: { email: @projectmember.email, project_id: @projectmember.project_id }
    assert_redirected_to projectmember_path(assigns(:projectmember))
  end

  test "should destroy projectmember" do
    assert_difference('Projectmember.count', -1) do
      delete :destroy, id: @projectmember
    end

    assert_redirected_to projectmembers_path
  end
end
