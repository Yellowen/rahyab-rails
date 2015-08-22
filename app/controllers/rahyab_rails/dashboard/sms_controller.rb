class RahyabRails::Dashboard::SMSController < ::Dashboard::ApplicationController

  def new_quick_send
    @sms = ::RahyabRails::SMS.new
  end

  def quick_send
    @sms = ::RahyabRails::SMS.new(
      source: source,
      destination: destination,
      text: sms_params[:text])

    respond_to do |f|
      if @sms.save
        RahyabRails::SendSMSWorker.perform_async(@sms.id)
        f.js
        f.html
      else
        f.js { render 'faalis/shared/error' }
      end
    end
  end

  private

    def sms_params
      params.require(:sms).permit(:source, :destinations, :text)
    end
end
