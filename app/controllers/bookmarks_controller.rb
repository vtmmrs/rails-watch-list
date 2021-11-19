# frozen_string_literal: true

class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:bookmark_id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    # params.require(:bookmark).permit(:name)
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
