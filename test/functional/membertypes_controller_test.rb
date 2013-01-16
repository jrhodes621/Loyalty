require 'test_helper'

class MembertypesControllerTest < ActionController::TestCase
  setup do
    @membertype = membertypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:membertypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create membertype" do
    assert_difference('Membertype.count') do
      post :create, membertype: { name: @membertype.name }
    end

    assert_redirected_to membertype_path(assigns(:membertype))
  end

  test "should show membertype" do
    get :show, id: @membertype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @membertype
    assert_response :success
  end

  test "should update membertype" do
    put :update, id: @membertype, membertype: { name: @membertype.name }
    assert_redirected_to membertype_path(assigns(:membertype))
  end

  test "should destroy membertype" do
    assert_difference('Membertype.count', -1) do
      delete :destroy, id: @membertype
    end

    assert_redirected_to membertypes_path
  end
end
