require "stripe"
Rails.configuration.stripe = {
  publishable_key: Rails.application.secrets.stripe_publishable_key,
  secret_key:      Rails.application.secrets.stripe_secret_key
  }
  Stripe.api_key = Rails.configuration.stripe[:secret_key]
# Stripe.api_key = "sk_test_51J4gjNSASr6Z8gvjIkvF4tfN6PALZfcbYH33yJM6wjy6CbwyGWdpobGk1cHlEHTg4j1Cty68Ky0UjzajrgLTmaoK003Dwrncd1"
# Stripe.api_key = "sk_test_51J4gjNSASr6Z8gvjIkvF4tfN6PALZfcbYH33yJM6wjy6CbwyGWdpobGk1cHlEHTg4j1Cty68Ky0UjzajrgLTmaoK003Dwrncd1"