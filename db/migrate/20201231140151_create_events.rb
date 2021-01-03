class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.integer :user_id, foreign_key: true


      t.timestamps
    end
  end
end