class AddAttachmentToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :attachment, :string
  end
end
