class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :username
      t.string :password
      t.string :name
      t.text :description
      t.string :whatsapp
      t.string :email
      t.string :game

      t.timestamps
    end
  end
end
