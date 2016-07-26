class Faalis::Dashboard::RahyabRails::MessagesController < ::Faalis::Dashboard::ApplicationController

  before_action :setup_named_routes

  in_index do |index|
    index.attributes :id, :source_number, :destination, :status
    index.action_button(label: I18n.t('rahyab_rails.bulk_send'),
                        href:  bulk_dashboard_messages_path,
                        icon_class: 'send',
                        model: RahyabRails::Message,
                        policy: :send,
                        class: 'bg-purple')

    index.action_button(label: I18n.t('rahyab_rails.bulk_send1'),
                        href:  bulk_dashboard_messages_path,
                        icon_class: 'send',
                        model: RahyabRails::Message,
                        policy: :send,
                        class: 'bg-olive')

  end

  def bulk
    @resource = RahyabRails::Message.new
  end


  def bulk_send
    service_number = params[:message][:service_number]
    source = RahyabRails::ServiceNumber.find_by(number: service_number)

    if source.nil?
      return render json: { error: t('source_is_missing'),
                            fields: [:service_number] }, status: 400
    end

    user   = current_user
    dests  = params[:message][:destinations].split(',').map { |x| x.chomp }
    RahyabRails::BulkSendJob.perform_later(source.number, dests,
                                           params[:message][:text], user.id)

    successful_response(:index, t('messages_queued'))
  end
end
