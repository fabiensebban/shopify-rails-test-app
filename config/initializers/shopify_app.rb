ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "cb4b3eec5fde263f20ae774b39c18af9"
  config.secret = "540fd3b6a53684f0e5b3a284f1abce4e"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  config.webhooks = [
    {topic: 'carts/update', address: 'https://shopify-rails-test-app-fabiensebban.c9users.io/webhooks/carts_update', format: 'json'},
  ]
end
