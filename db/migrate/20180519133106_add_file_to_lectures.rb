class AddFileToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :file, :string
  end
end
