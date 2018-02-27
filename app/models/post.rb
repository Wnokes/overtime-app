class Post < ApplicationRecord
	enum status: { submittied: 0, approved: 1, rejected: 2}
	belongs_to :user, optional: true
	validates_presence_of :date, :rationale
end
