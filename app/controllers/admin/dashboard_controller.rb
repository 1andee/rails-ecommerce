class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: "Jungle", password: "book", except: :nonauth

  def nonauth
    render plain: "Access denied."
  end

  def show
  end

end
