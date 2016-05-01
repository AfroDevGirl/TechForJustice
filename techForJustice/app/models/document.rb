class Document < ActiveRecord::Base
    has_many :document_steps
    accepts_nested_attributes_for :document_steps
end
