class SiteController < ApplicationController
  def index
      
      @apps = App.order('created_at desc').page(params[:page]) if current_user
  end
end
