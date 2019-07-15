class CreateMantras < ActiveRecord::Migration[5.1]
  def change
    create_table :mantras do |t|
      t.integer :user_id
      t.string :mantra

      t.timestamps
    end
  end
end
