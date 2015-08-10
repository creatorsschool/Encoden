require "rubygems"
require "braintree"

Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = 'tzdcz4khr3gnmpgv'
Braintree::Configuration.public_key = 'dmtqzp7rtys22pt4'
Braintree::Configuration.private_key = 'c4c61fb3734eee0f0e227613e172749e'
Braintree::Test::Nonce::Transactable
Braintree::Test::Nonce::Consumed
Braintree::Test::Nonce::PayPalOneTimePayment
Braintree::Test::Nonce::PayPalFuturePayment

post "/payment-methods" do
  nonce = params[:payment_method_nonce]
end

result = Braintree::Transaction.sale(
  :amount => "100.00",
  :payment_method_nonce => nonce_from_the_client
)