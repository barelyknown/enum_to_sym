class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
