class Dependency < ActiveRecord::Base
    has_many :document_step_requirements
    has_many :document_steps, through: :document_step_requirements
end
