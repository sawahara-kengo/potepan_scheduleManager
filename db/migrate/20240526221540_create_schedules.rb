class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title_column, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :allday_enabled, default: false
      t.text :memo_type

      t.timestamps
    end
  end
end