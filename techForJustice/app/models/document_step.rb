class DocumentStep < ActiveRecord::Base
 scope :all_steps, ->(document_id) { where(:document_id => document_id)}
 
 belongs_to :document
end
