class CreatePendingLectures < ActiveRecord::Migration[6.1]
  def change
    create_table :pending_lectures do |t|
      t.belongs_to :coach, foreign_key: true
      t.string :name
      t.string :whatsapp
      t.integer :tier

      t.timestamps
    end
  end
end
