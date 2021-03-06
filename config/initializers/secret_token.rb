# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if ENV['RAILS_ENV'] == 'production'
  Kaomojiworld::Application.config.secret_token = ENV['SECRET_TOKEN']
  Kaomojiworld::Application.config.secret_key_base = ENV['SECRET_KEY_BASE']
else
  Kaomojiworld::Application.config.secret_token = 'c3050000262cdcdd4e6fa317fb3050b32e2ac83db9ec8f2ee3bb96f1fe4fa7b84489fb60b70b0edeea437c1f2302077ef1fbdfedc3071fc8a3e50687573babfd'
  Kaomojiworld::Application.config.secret_key_base = '89328hdfgdfinb0n0h04htw0ef0eoodifoxioxibFFwfa7b84489fb60b70b0edeea437c1f2302077ef1fbdfedc3071fc8a3e50687573babfd'
end
