class Lecture < ApplicationRecord
    belongs_to :user
    acts_as_votable
    acts_as_commontable
end
