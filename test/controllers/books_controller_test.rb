require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "can create a book" do
    Book.create(:title => {'animal farm' => 'orwell'}) # ({ 'title' => 'animal farm'})
    assert_equal "", Book.all
  end

  test "get list of books" do
    skip
    get :show
    assert_equal "", books(:title)
  end

end
