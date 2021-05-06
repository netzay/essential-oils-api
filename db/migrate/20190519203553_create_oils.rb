class CreateOils < ActiveRecord::Migration[5.2]
  def change
    create_table :oils do |t|
      t.string :name
      t.string :uses
      t.string :notes

      t.timestamps
    end
  end
end
