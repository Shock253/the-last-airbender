class SearchController < ApplicationController
  def index
    @members = AvatarService.new.members(params[:nation])
  end
end
