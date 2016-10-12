require 'test_helper'

class ArtistControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: artists(:bonjovi).id }
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, {id: 1}
    assert_response :success
  end

  test "should be able to create an artist" do
    post_params = {artist: {name: "Regina Spektor"}  }
    post :create, post_params
    assert_response :redirect
  end

  test "should be able to update an artist" do
    patch :update, {id: 1}
    assert_response :success
  end

  test "should be able to delete" do
    delete :destroy, {id: 1}
    assert_response :success
  end

end
