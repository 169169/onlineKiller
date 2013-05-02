class ModifyFacultyId < ActiveRecord::Migration
  def change
  	remove_column "users", "faculty_id"

  	add_column "users", "faculty_id", :integer
  end
end
