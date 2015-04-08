# Be sure to restart your server when you modify this file.

Restaurant::Application.config.session_store :cookie_store, key: '_restaurant_session',expire_after: 1.month

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Restaurant::Application.config.session_store :active_record_store
