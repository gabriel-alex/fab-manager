# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store,
                                       key: '_Fab-manager_session',
                                       secure: (Rails.env.production? || Rails.env.staging?) && !Rails.application.secrets.allow_insecure_http
