require 'cybersource_rest_client'
require_relative '../../../Data/Configuration.rb'

public
class GetListOfBatchFiles
  def main()
    config = MerchantConfiguration.new.merchantConfigProp()
    start_time = "2018-10-01T20:34:24.000Z"
    end_time = "2018-10-29T23:27:25.000Z"
    api_client = CyberSource::ApiClient.new
    api_instance = CyberSource::TransactionBatchesApi.new(api_client, config)
    data, status_code, headers = api_instance.pts_v1_transaction_batches_get(start_time, end_time)
    puts data, status_code, headers
  rescue StandardError => err
    puts err.message
  end
  GetListOfBatchFiles.new.main
end


