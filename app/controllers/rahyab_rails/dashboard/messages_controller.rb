class RahyabRails::Dashboard::MessagesController < Dashboard::ApplicationController
  in_index do
    attributes :id, :source_number, :destination, :status
    action_button(label: I18n.t('rahyab.bulk_send'),
                  href: rahyab_rails.dashboard_messages_bulk_path,
                  icon_class: 'send', class: 'btn-info')
  end
end
