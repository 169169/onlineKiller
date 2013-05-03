class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :subject_id
      t.integer :faculty_id
      t.integer :content_id

      t.timestamps
    end
  end
end
