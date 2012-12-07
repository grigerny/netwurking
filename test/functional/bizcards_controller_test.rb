require 'test_helper'

class BizcardsControllerTest < ActionController::TestCase
  setup do
    @bizcard = bizcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bizcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bizcard" do
    assert_difference('Bizcard.count') do
      post :create, bizcard: {  }
    end

    assert_redirected_to bizcard_path(assigns(:bizcard))
  end

  test "should show bizcard" do
    get :show, id: @bizcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bizcard
    assert_response :success
  end

  test "should update bizcard" do
    put :update, id: @bizcard, bizcard: {  }
    assert_redirected_to bizcard_path(assigns(:bizcard))
  end

  test "should destroy bizcard" do
    assert_difference('Bizcard.count', -1) do
      delete :destroy, id: @bizcard
    end

    assert_redirected_to bizcards_path
  end
end
