class Lecture < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader
    belongs_to :user ,:optional => true
    belongs_to :course
    acts_as_votable
    acts_as_commontable
    has_and_belongs_to_many :users

    

end
