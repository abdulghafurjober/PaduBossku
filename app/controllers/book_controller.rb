class BookController < ApplicationController

    def index
        @books = Book.all
    end

    #GET method
    def show #show books written by author
        @books=Author.where(book_id: params[:id], Author: {})
        @candidates = Application.where(job_id: params[:id], users: {user_type: 'candidate'})
    end

    #POST method
    def new #create a new book
        @book= Book.new
    end

    #POST method
    def create 
        @book=Book.new(book_params) 
        #sedang mencari solusi, cara nak bgtahu kat 'program', yang book ni, ditulis author ni, dan bila kita klik kat spesific author, dia terus show list book tulisan author tu
    end
    #DELETE method
    def delete #delete a book
        @book.destroy
        respond_to do |format|
            format.html{ redirect_to books_url, notice: 'Book was successfully destroyed.' }
            format.json{ head :no_content }
    end

    private

    def set_book
        @book= Book.find(params[:id))
    end

    def book_params
        params.require(:book).permit(:title, :synopsis)
    end
    
end
