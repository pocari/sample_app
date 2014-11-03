class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  around_filter :transaction_fileter

  private
  def transaction_fileter
    ActiveRecord::Base.transaction do
      yield
    end
  end
end
