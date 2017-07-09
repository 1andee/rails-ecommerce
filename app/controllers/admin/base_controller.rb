class Admin::BaseController < ApplicationController

  http_basic_authenticate_with name: ENV["ADMIN_NAME"], password: ENV["ADMIN_PASS"]

end
