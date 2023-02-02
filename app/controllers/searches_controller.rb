class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @search = params[:search]
    @word = params[:word]

    if @range == "User"
      @records = User.looks(@search, @word)
      render "/searches/search_result"
    else
      @records = Book.looks(@search, @word)
      render "/searches/search_result"
    end
  end
end
