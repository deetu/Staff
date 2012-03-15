class PagesController < ApplicationController
  skip_before_filter :authorize
  def home
  end

  def help
  end

  def contact
  end
end
