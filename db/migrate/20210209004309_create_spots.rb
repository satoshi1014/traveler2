class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.string  :place
      t.string  :address
      t.string  :one_word
      t.text  :thought
      t.integer :user_id
      t.timestamps
    end
  end
end
