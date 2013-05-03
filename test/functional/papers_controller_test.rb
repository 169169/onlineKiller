require 'test_helper'

class PapersControllerTest < ActionController::TestCase
  setup do
    @paper = papers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:papers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paper" do
    assert_difference('Paper.count') do
      post :create, paper: { content_id: @paper.content_id, faculty_id: @paper.faculty_id, subject_id: @paper.subject_id }
    end

    assert_redirected_to paper_path(assigns(:paper))
  end

  test "should show paper" do
    get :show, id: @paper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paper
    assert_response :success
  end

  test "should update paper" do
    put :update, id: @paper, paper: { content_id: @paper.content_id, faculty_id: @paper.faculty_id, subject_id: @paper.subject_id }
    assert_redirected_to paper_path(assigns(:paper))
  end

  test "should destroy paper" do
    assert_difference('Paper.count', -1) do
      delete :destroy, id: @paper
    end

    assert_redirected_to papers_path
  end
end
