class PagesController < ApplicationController
  def home
    if current_user
      redirect_to activities_url
    end
  end
end
