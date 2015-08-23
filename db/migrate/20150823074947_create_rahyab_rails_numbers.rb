class CreateRahyabRailsNumbers < ActiveRecord::Migration
  def change
    create_table :rahyab_rails_numbers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :number

      t.timestamps null: false
    end
  end
end
