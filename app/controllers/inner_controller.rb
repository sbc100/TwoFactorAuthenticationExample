class InnerController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def codes
    @codes = current_user.create_backup_codes
  end
end
