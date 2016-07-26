class Faalis::Dashboard::RahyabRails::SMSController < ::Faalis::Dashboard::ApplicationController

  def new_quick_send
    @sms = ::RahyabRails::SMS.new
  end

  def quick_send
    ids = []
    params[:destinations].each do |destination|
      sms = ::RahyabRails::SMS.new(
        source: sms_params[:source],
        destination: destination,
        text: sms_params[:text])
      if (sms.save)
        ids.push(destination)
      else
        error = true
      end

      respond_to do |f|
        if !error
          RahyabRails::SendSMSWorker.perform_async(ids)
          f.js
          f.html
        else
          f.js { render 'faalis/shared/error' }
        end
      end
    end
  end

  private

  def sms_params
    params.require(:sms).permit(:source, :destinations, :text)
  end

end
