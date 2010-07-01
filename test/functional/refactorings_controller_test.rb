require 'test_helper'

class RefactoringsControllerTest < ActionController::TestCase
  setup do
    @refactoring = refactorings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refactorings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refactoring" do
    assert_difference('Refactoring.count') do
      post :create, :refactoring => @refactoring.attributes
    end

    assert_redirected_to refactoring_path(assigns(:refactoring))
  end

  test "should show refactoring" do
    get :show, :id => @refactoring.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @refactoring.to_param
    assert_response :success
  end

  test "should update refactoring" do
    put :update, :id => @refactoring.to_param, :refactoring => @refactoring.attributes
    assert_redirected_to refactoring_path(assigns(:refactoring))
  end

  test "should destroy refactoring" do
    assert_difference('Refactoring.count', -1) do
      delete :destroy, :id => @refactoring.to_param
    end

    assert_redirected_to refactorings_path
  end
end
