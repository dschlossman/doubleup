# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_playing_session',
  :secret      => 'd3c1eb97b8bd3ab537984454c64eb520848bf38d66ab62abf2b52981619f1342d599b03d5ec56c98c798c7b8ae0cbba68c210b03883ab93e2550853c6f485eb9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
