class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # Your index action code here
  end
end
