class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]

    if @model == "User"
      @records = User.search_for(@content, @method)
      render "/searches/search_result"
    else
      @records = Book.search_for(@content, @method)
      render "/searches/search_result"
    end
  end
end
