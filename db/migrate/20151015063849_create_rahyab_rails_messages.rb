class CreateRahyabRailsMessages < ActiveRecord::Migration
  def change
    create_table :rahyab_rails_messages do |t|
      t.references :service_number_id
      t.text :destination
      t.text :text
      t.string :status
      t.datetime :delivered_at

      t.timestamps null: false
    end
  end
end
