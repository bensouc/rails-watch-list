class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    @movies = Movie.all
  end

  def create
    @movie = Movie.find(params[:bookmark][:movie_id])
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.movie = @movie
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:id])
    @bookmark = Bookmark.where({ movie: @movie, list: @list }).first
    @bookmark.destroy

    redirect_to list_path(@list)
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:comment)
  end


end
