class CreateJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :journals do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :journals, [:user_id, :created_at]
  end
end
