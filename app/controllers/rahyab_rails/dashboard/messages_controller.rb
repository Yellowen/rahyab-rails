class RahyabRails::Dashboard::MessagesController < Dashboard::ApplicationController
  in_index do |index|
    index.attributes :id, :source_number, :destination, :status
    index.action_button(label: I18n.t('rahyab_rails.bulk_send'),
                        href:  bulk_dashboard_messages_path,
                        icon_class: 'send',
                        model: RahyabRails::Message,
                        policy: :send,
                        class: 'btn-info')
  end

  def bulk
    @resource = RahyabRails::Message.new
  end


  def bulk_send

  end
end
