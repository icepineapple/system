class BooksController < ApplicationController
  
  before_action :find_book, except: [:index, :new, :create]
  
  def index
      @books = Book.all
    end
  
  def new
      @book = Book.new
    end
  
   def create
      @book = Book.new(book_params)

      if @book.save
        redirect_to books_path, notice: "success!"
      else
        render :new
      end
    end
  
   def edit
    end
  
   def update
    if @book.update(book_params)
    redirect_to books_path, notice: "updated!!"
    else
      render 'edit'
    end
     
    def destroy
      @book.destroy
      redirect_to books_path, notice: "deleted!"
    end
  
  private
    def book_params
      params.require(:book).permit(:book, :introduction, :author, :price)
    end
end
