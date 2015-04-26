class AddCredentialsToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :education_1, :string
  end
end
