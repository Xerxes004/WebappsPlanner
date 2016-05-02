require 'test_helper'

class AddDescriptionToPlansControllerTest < ActionController::TestCase
  setup do
    @add_description_to_plan = add_description_to_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_description_to_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_description_to_plan" do
    assert_difference('AddDescriptionToPlan.count') do
      post :create, add_description_to_plan: { description: @add_description_to_plan.description }
    end

    assert_redirected_to add_description_to_plan_path(assigns(:add_description_to_plan))
  end

  test "should show add_description_to_plan" do
    get :show, id: @add_description_to_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_description_to_plan
    assert_response :success
  end

  test "should update add_description_to_plan" do
    patch :update, id: @add_description_to_plan, add_description_to_plan: { description: @add_description_to_plan.description }
    assert_redirected_to add_description_to_plan_path(assigns(:add_description_to_plan))
  end

  test "should destroy add_description_to_plan" do
    assert_difference('AddDescriptionToPlan.count', -1) do
      delete :destroy, id: @add_description_to_plan
    end

    assert_redirected_to add_description_to_plans_path
  end
end
