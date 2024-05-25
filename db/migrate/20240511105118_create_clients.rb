class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients, id: :uuid, default: "gen_random_uuid()" do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :address
      t.uuid :coach_id, null: true

      t.timestamps
    end

    add_index :clients, :coach_id
    add_foreign_key :clients, :coaches
  end
end
