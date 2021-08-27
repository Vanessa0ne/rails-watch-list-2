class BookmarkController < ApplicationController
    def index
    @bookmark = Bookmark.all
  end
end
