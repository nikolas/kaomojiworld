require 'test_helper'

class MojisControllerTest < ActionController::TestCase
  setup do
    @moji = mojis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mojis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moji" do
    assert_difference('Moji.count') do
      post :create, moji: { content: @moji.content }
    end

    assert_redirected_to moji_path(assigns(:moji))
  end

  test "should show moji" do
    get :show, id: @moji
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moji
    assert_response :success
  end

  test "should update moji" do
    put :update, id: @moji, moji: { content: @moji.content }
    assert_redirected_to moji_path(assigns(:moji))
  end

  test "should destroy moji" do
    assert_difference('Moji.count', -1) do
      delete :destroy, id: @moji
    end

    assert_redirected_to mojis_path
  end
end
