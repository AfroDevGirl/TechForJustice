class DocumentStepRequirement < ActiveRecord::Base
     belongs_to :document_step
    belongs_to :dependency
end
