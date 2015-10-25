class RahyabRails::Dashboard::MessagesController < Dashboard::ApplicationController
  in_index do |index|
    index.attributes :id, :source_number, :destination, :status
    index.action_button(label: I18n.t('rahyab_rails.bulk_send'),
                        href:  bulk_dashboard_messages_path,
                        icon_class: 'send',
                        model: RahyabRails::Message,
                        policy: :send,
                        class: 'btn-flat bg-purple')
  end

  def bulk
    @resource = RahyabRails::Message.new
  end


  def bulk_send
    source = RahyabRails::ServiceNumber.find_by(number: params[:service_number])

    if source.nil?
      return render json: { error: t('source_is_missing'),
                            fields: [:service_number] }, status: 400
    end

    user   = current_user
    dests  = params[:destinations].split(',').map { |x| x.chomp }
    RahyabRails::BulkSendJob.perform_later(source, dests,
                                           params[:text], user.id)

    successful_response(:index, t('messages_queued'))
  end
end
