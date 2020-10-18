class WelcomeController < ApplicationController
  def index
    @parks_info = SearchFacade.find_parks_info(params[:state])
  end
end
