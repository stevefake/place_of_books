require "test_helper"
require "pry"

class ReservationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    reservation = Reservation.create
    get :show, id: reservation.id
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should patch update" do
    reservation = Reservation.create(return: 201_604_10)
    patch :update, id: reservation.id, reservation: { return: 201_604_11 }
    assert_response :redirect
    assert_equal "2016-04-11 00:00:00 UTC", Reservation.find(reservation.id).return.to_s
  end

  test "should post create" do
    reservation = Reservation.create(return: 201_604_09, book_id: 3)
    post :create, reservation: { book_id: 3 }
    # binding.pry
    assert_response :redirect
    assert_equal 3, reservation.book_id
  end
end
