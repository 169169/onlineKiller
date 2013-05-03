class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :question_id
      t.integer :paper_id

      t.timestamps
    end
  end
end
