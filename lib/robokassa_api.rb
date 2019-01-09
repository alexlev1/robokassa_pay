require 'robokassa_api/payment'

module RobokassaApi
  extend self

  def create_pay_url(signature, user, out_sum)
    RobokassaApi::PaymentUrl.create_pay_url(signature, user, out_sum)
  end

  def create_signature(args)
    RobokassaApi::SignatureGenerator.create_signature(args)
  end

  def check_signatures(signature1, signature2, invoice_id)
    if signature_valid?(signature1, signature2)
      "OK#{invoice_id}"
    else
      "bad sign"
    end
  end

  private

  def signature_valid?(signature1, signature2)
    (!signature_1.blank?) && (signature_1 == signature_2)
  end
end