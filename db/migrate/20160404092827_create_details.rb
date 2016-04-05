class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :language
      t.datetime :release_date

      t.timestamps null: false
    end
  end
end
