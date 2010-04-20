# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rsshows_session',
  :secret      => 'e8562f1960d834f120100c19baf2238f66c3db8577756b4ae8a9405b3c81fe420fcaf008f5ecdd78dc6a32ec3fae4eeb155d09f57d6cf43aaa108828775ae9d9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
