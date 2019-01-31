class AddActiveColumnToStudents < ActiveRecord::Migration

  def change
    add_column(:students, :active, :boolean, default: 'draft', null: false)
  end

end
