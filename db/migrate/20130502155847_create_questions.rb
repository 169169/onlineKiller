class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :subject_id
      t.string :title
      t.string :firstOption
      t.string :secondOption
      t.string :thirdOption
      t.string :fourthOption

      t.timestamps
    end
  end
end
