class CreatePickedServices < ActiveRecord::Migration[6.1]
  def change
    create_table :picked_services do |t|
      t.belongs_to :offered_service
      t.belongs_to :quote

      t.timestamps
    end
  end
end
