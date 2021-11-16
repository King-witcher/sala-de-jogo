class CreateAdminPasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_passwords do |t|
      t.string :value

      t.timestamps
    end
  end
end
