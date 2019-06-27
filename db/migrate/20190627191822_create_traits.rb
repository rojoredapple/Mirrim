class CreateTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :traits do |t|
      t.string :adjective
      t.integer :progress

      t.timestamps
    end
  end
end
