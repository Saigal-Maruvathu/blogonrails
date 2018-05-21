class AddCommenterToRemarks < ActiveRecord::Migration[5.2]
  def change
    add_column :remarks, :commenter, :string
  end
end
