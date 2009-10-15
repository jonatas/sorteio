# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sorteio_session',
  :secret      => '4efe93bd35a0bbb03a9b364787dd2c9a4d0bcc0c5e886fb3eddab5ceb53c5be4bff8e074a95635feba309b3451951befb8bf4a5a7f4774631bf1f12b55fa6659'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
