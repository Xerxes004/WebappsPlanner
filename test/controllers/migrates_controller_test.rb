require 'test_helper'

class MigratesControllerTest < ActionController::TestCase
  setup do
    @migrate = migrates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:migrates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create migrate" do
    assert_difference('Migrate.count') do
      post :create, migrate: { AddDescriptionToPlans: @migrate.AddDescriptionToPlans, description: @migrate.description }
    end

    assert_redirected_to migrate_path(assigns(:migrate))
  end

  test "should show migrate" do
    get :show, id: @migrate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @migrate
    assert_response :success
  end

  test "should update migrate" do
    patch :update, id: @migrate, migrate: { AddDescriptionToPlans: @migrate.AddDescriptionToPlans, description: @migrate.description }
    assert_redirected_to migrate_path(assigns(:migrate))
  end

  test "should destroy migrate" do
    assert_difference('Migrate.count', -1) do
      delete :destroy, id: @migrate
    end

    assert_redirected_to migrates_path
  end
end
