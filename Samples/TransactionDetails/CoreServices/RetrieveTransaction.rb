require 'cybersource_rest_client'
require_relative '../../../Data/Configuration.rb'

public
class RetrieveTransaction
  def main()
    id = "5408386919326811103004" 
    config = MerchantConfiguration.new.merchantConfigProp()
    api_client = CyberSource::ApiClient.new
    api_instance = CyberSource::TransactionDetailsApi.new(api_client, config)
    data, status_code, headers = api_instance.get_transaction(id)
    puts data, status_code, headers
  rescue StandardError => err
    puts err.message
  end
  RetrieveTransaction.new.main
end


