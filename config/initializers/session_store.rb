# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_notes_app_session',
  :secret      => '59b6207cd87e9a659fae3f75d9b5581088680495f3da2f10d673dea08bbd6342dff6da715e6b5d438f181a66c56a7c02d099d9b65dfd5918ace53d51da251c17'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
