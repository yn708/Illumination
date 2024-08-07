# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://172.27.0.2:4000', 'http://localhost:4000', 'https://illuminations.vercel.app/'

    resource '*',
             headers: :any,
             expose: %w[access-token uid client],
             methods: %i[get post put patch delete options head]
  end
end
