class CreateRahyabRailsSMS < ActiveRecord::Migration
  def change
    create_table :rahyab_rails_sms do |t|
      t.string :number
      t.text :text
      t.integer :status

      t.timestamps null: false
    end
  end
end
