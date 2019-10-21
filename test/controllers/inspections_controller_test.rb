require 'test_helper'

class InspectionsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
    @inspection = inspections(:one)
  end

  test "should get index" do
    get :index, params: { client_id: @client }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { client_id: @client }
    assert_response :success
  end

  test "should create inspection" do
    assert_difference('Inspection.count') do
      post :create, params: { client_id: @client, inspection: @inspection.attributes }
    end

    assert_redirected_to client_inspection_path(@client, Inspection.last)
  end

  test "should show inspection" do
    get :show, params: { client_id: @client, id: @inspection }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { client_id: @client, id: @inspection }
    assert_response :success
  end

  test "should update inspection" do
    put :update, params: { client_id: @client, id: @inspection, inspection: @inspection.attributes }
    assert_redirected_to client_inspection_path(@client, Inspection.last)
  end

  test "should destroy inspection" do
    assert_difference('Inspection.count', -1) do
      delete :destroy, params: { client_id: @client, id: @inspection }
    end

    assert_redirected_to client_inspections_path(@client)
  end
end
