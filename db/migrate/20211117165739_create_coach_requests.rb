class CreateCoachRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :coach_requests do |t|
      t.string :name
      t.string :email
      t.string :whatsapp
      t.string :cpf
      t.string :game
      t.string :description
      t.integer :tier

      t.timestamps
    end
  end
end
