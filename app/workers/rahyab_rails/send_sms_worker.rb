class RahyabRails::SendSMSWorker
  include ::Sidekiq::Worker

  def perform(sms_ids)
    sms_ids.each do |sms_id|
      sms = RahyabRails::SMS.find(sms_id)
      sms_api = RahyabRails::API.new
      if reason = sms_api.send_sms(sms.source,
                                 sms.destinations,
                                 sms.text)
        sms.status = :success
      else
        sms.status = :faild
        sms.reason = reason
      end
      sms.save
    end
  end
end
