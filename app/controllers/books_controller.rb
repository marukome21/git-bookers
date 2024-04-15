class BooksController < ApplicationController
  def index
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "投稿に成功しました。"
      redirect_to book_path(@book.id)
    else
      flash.now[:alert] = "投稿に失敗しました。"
      render :index
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def delete
    
  end
  
   private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
