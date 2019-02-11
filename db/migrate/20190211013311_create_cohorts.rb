class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :instructor
      t.string :student

      t.timestamps
    end
  end
end
