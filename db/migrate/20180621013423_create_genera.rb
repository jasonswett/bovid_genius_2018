class CreateGenera < ActiveRecord::Migration[5.2]
  def change
    create_table :genera do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :genera, :name, unique: true
  end
end
