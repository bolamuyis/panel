class CreateStudentcohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :studentcohorts do |t|
      t.belongs_to :student
      t.belongs_to :cohort
    
      t.timestamps
    end
  end
end
