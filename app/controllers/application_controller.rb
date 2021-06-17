# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

    def authenticate_firebase_id_token
      authenticate_with_http_token do |token, _options|
        FirebaseHelper::Auth.verify_id_token(token)
      rescue => e
        logger.error(e.message)
        false
      end
    end
end
