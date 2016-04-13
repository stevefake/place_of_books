require "test_helper"

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
    book = Book.create(title: "Pam I Am")
    get :show, id: book.id
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should patch update" do
    book = Book.create(title: "Mam I Am")
    patch :update, id: book.id, book: { title: "Jam I Am" }
    assert_response :redirect
    assert_equal "Jam I Am", Book.find(book.id).title
  end

  test "should post create" do
    book = Book.create(title: "Sam I Am")
    post :create, book: { title: "Sam I Am" }
    assert_response :redirect
    assert_equal "Sam I Am", book.title
  end

  test "should destroy" do
    book = Book.create(title: "Sam I Am")
    delete :destroy, id: book.id
    assert_response :redirect
  end

  test "get list of books" do
    skip
    get :show
    assert_equal "", books(:title)
  end
end
