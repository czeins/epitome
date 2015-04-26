class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :user
      t.string :education
      t.string :jobs
      t.string :skills

      t.timestamps null: false
    end
  end
end
