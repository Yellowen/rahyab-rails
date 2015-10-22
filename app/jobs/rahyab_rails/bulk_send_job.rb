module RahyabRails
  class BulkSendJob < ActiveJob::Base
    queue_as :default

    def perform(source_number, cell_numbers, text)
      api = RahyabRails::API.new
      cell_numbers.each do |cell_number|
        unless cell_number.nil?
          Rails.logger.info "Send to: #{cell_number}"
          result = api.send_sms(source_number, [cell_number], text)

          if result != 0
            sleep 2
            delivery = api.get_delivery(result)

            Rails.logger.info "Delivery: #{delivery}"
          # batch  = delivery["smsStatusPollResponse"]["batch"]
          # status = batch.subnodes["sms"]["status"]
          # time   = batch.subnodes["sms"]["time"]

          # puts "Batch: #{result}  Status: #{status} Time: #{time}"
          else
            f.puts "Send failed to: #{cell_number}"
            puts "Send failed to: #{cell_number}"

          end
        end

    end
  end
end
