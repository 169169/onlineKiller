class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
    	t.string :name
    	t.string :description

      t.timestamps
    end

    remove_column "users", "faculty"
    add_column "users", "faculty_id", :string
  end
end
