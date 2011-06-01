require 'test_helper'

class CanvasesControllerTest < ActionController::TestCase
  setup do
    @canvas = canvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas" do
    assert_difference('Canvas.count') do
      post :create, :canvas => @canvas.attributes
    end

    assert_redirected_to canvas_path(assigns(:canvas))
  end

  test "should show canvas" do
    get :show, :id => @canvas.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @canvas.to_param
    assert_response :success
  end

  test "should update canvas" do
    put :update, :id => @canvas.to_param, :canvas => @canvas.attributes
    assert_redirected_to canvas_path(assigns(:canvas))
  end

  test "should destroy canvas" do
    assert_difference('Canvas.count', -1) do
      delete :destroy, :id => @canvas.to_param
    end

    assert_redirected_to canvases_path
  end
end
