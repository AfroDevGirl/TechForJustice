require 'test_helper'

class DocumentStepsControllerTest < ActionController::TestCase
  setup do
    @document_step = document_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:document_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document_step" do
    assert_difference('DocumentStep.count') do
      post :create, document_step: { description: @document_step.description, order: @document_step.order, references: @document_step.references, video: @document_step.video }
    end

    assert_redirected_to document_step_path(assigns(:document_step))
  end

  test "should show document_step" do
    get :show, id: @document_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document_step
    assert_response :success
  end

  test "should update document_step" do
    patch :update, id: @document_step, document_step: { description: @document_step.description, order: @document_step.order, references: @document_step.references, video: @document_step.video }
    assert_redirected_to document_step_path(assigns(:document_step))
  end

  test "should destroy document_step" do
    assert_difference('DocumentStep.count', -1) do
      delete :destroy, id: @document_step
    end

    assert_redirected_to document_steps_path
  end
end
