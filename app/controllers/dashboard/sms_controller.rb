class RahyabRails::Dashboard::SMSController < ::Dashboard::ApplicationController
  def quick_send
    sms = Rahyab::SMS.new(@url, @user, @password, @company)
    if sms.send_sms(sms_params[:source], sms_params[:destinations], sms_params[:text])

      sms_params[:destinations].each do |destination|
        smsModel = SMS.new(
          source: source,
          destination: destination,
          text: sms_params[:text])
        smsModel.save
      end
    end
  end


  private
  def sms_params
    params.require(:sms).permit(:source, :destinations, :text)
  end

end
