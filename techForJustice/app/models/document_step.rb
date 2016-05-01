class DocumentStep < ActiveRecord::Base
 scope :all_steps, ->(document_id) { where(:document_id => document_id)}
 
 belongs_to :document
 has_many :document_step_requirements
 has_many :dependencies, through: :document_step_requirements
end
