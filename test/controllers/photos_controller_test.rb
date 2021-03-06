require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @photo = photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, photo: { url: @photo.url }
    end

    assert_response 201
  end

  test "should show photo" do
    get :show, id: @photo
    assert_response :success
  end

  test "should update photo" do
    put :update, id: @photo, photo: { url: @photo.url }
    assert_response 204
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo
    end

    assert_response 204
  end
end
