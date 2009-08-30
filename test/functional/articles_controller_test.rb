require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articles" do
    assert_difference('Articles.count') do
      post :create, :articles => { }
    end

    assert_redirected_to articles_path(assigns(:articles))
  end

  test "should show articles" do
    get :show, :id => articles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => articles(:one).to_param
    assert_response :success
  end

  test "should update articles" do
    put :update, :id => articles(:one).to_param, :articles => { }
    assert_redirected_to articles_path(assigns(:articles))
  end

  test "should destroy articles" do
    assert_difference('Articles.count', -1) do
      delete :destroy, :id => articles(:one).to_param
    end

    assert_redirected_to articles_path
  end
end
