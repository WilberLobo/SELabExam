class Requirement < ActiveRecord::Base
	validates :name, :description, :contact, presence: true
	validates :contact, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
end
