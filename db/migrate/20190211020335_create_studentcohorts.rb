class CreateStudentcohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :studentcohorts do |t|
      t.references :studentcohorts, :cohort, index: true
    

      t.timestamps
    end
  end
end
