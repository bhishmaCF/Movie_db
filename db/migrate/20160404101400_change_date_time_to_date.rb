class ChangeDateTimeToDate < ActiveRecord::Migration
  def change
  	change_column :details, :release_date, :date
  end
end
