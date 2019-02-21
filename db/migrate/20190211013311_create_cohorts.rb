class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :teacher
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
