class DocumentDependency < ActiveRecord::Base
    has_many :documents
    has_many :dependencies
end
