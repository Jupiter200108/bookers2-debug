class SearchesController < ApplicationController
  before_action :authenticate_user!
  render 'searches/search_result'
  def search
    @range = params[:range]
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:search], params[:word])
    end
  end
end
