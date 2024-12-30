class Api::ApiController < ApplicationController
  include Authentication

  def current_user
    Current.session.user
  end
end
