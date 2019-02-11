class DeleteColumninSTudentcohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :studentcohorts, :studentcohorts_id
  end
end
