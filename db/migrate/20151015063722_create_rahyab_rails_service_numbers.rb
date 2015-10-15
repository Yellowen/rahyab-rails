class CreateRahyabRailsServiceNumbers < ActiveRecord::Migration
  def change
    create_table :rahyab_rails_service_numbers do |t|
      t.references :user
      t.string :number
      t.boolean :lock

      t.timestamps null: false
    end
  end
end
