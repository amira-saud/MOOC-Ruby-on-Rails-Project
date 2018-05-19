class Lecture < ApplicationRecord
    belongs_to :user ,:optional => true
    belongs_to :course
    acts_as_votable
    acts_as_commontable
    mount_uploader :attachment, AttachmentUploader

end
