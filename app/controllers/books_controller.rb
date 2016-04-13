class BooksController < ApplicationController
  def index
    "hellow??"
    @books = Book.all
  end

  def new

  end

  def show
  end

  def edit
  end

  def update
    redirect_to_action "show", id: 1
  end

  def create
    @book = Book.create(params[:book].permit!)
    redirect_to_action "show", id: @book.id
  end

  def destroy
    redirect_to_action "index"
  end
end
