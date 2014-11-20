Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter,
    twitter_API_KEY    = ENV['API_KEY'],
    twitter_API_SECRET = ENV['API_SECRET']
end
