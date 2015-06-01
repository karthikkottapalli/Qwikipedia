require 'test_helper'

class WikipagesControllerTest < ActionController::TestCase
  setup do
    @wikipage = wikipages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wikipages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wikipage" do
    assert_difference('Wikipage.count') do
      post :create, wikipage: { body: @wikipage.body, title: @wikipage.title }
    end

    assert_redirected_to wikipage_path(assigns(:wikipage))
  end

  test "should show wikipage" do
    get :show, id: @wikipage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wikipage
    assert_response :success
  end

  test "should update wikipage" do
    patch :update, id: @wikipage, wikipage: { body: @wikipage.body, title: @wikipage.title }
    assert_redirected_to wikipage_path(assigns(:wikipage))
  end

  test "should destroy wikipage" do
    assert_difference('Wikipage.count', -1) do
      delete :destroy, id: @wikipage
    end

    assert_redirected_to wikipages_path
  end
end
