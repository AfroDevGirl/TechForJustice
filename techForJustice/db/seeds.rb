Genre.destroy_all
Document.destroy_all
DocumentStep.destroy_all
Dependency.destroy_all
#DocumentDependency.destroy_all
DocumentStepRequirement.destroy_all

Genre.create!(
	name: "expungement: interest of justice",
	description: "Process of sealing on the grounds of justice."	
)
Genre.create!(
	name: "expungement: innocence motion",
	description: "Process of sealing on the grounds of innocence"
)
@genre_id=Genre.first.id
Document.create!(
	name: "Interest of Justice Motion",
	description: "A court motion for the interest of justice",
	#type: "motion",
	genre_id: @genre_id
)
@document_id=Document.first.id
DocumentStep.create!(
	document_id: @document_id,
	order: "0",
	video: "https://youtu.be/tbfhQQHsvxU",
	description:"step1"

)

DocumentStep.create!(
        document_id: @document_id,
        order: "1",
        video: "https://youtu.be/QZug5ybhEeI",
        description:"step2"

)

DocumentStep.create!(
        document_id: @document_id,
        order: "2",
        video: "https://youtu.be/QZug5ybhEeI",
        description:"step3"

)
@document_step_id=DocumentStep.first.id

Dependency.create!(
	name: "full_name",
	description:"User Full Name",
	input_type: "string"
	)
@dependency_id=Dependency.last.id
DocumentStepRequirement.create!(
	document_step_id: @document_step_id,
	dependency_id: @dependency_id
	)
Dependency.create!(
	name: "case_date",
	description:"Date of the incident",
	input_type: "date"
	)
@dependency_id=Dependency.last.id
DocumentStepRequirement.create!(
	document_step_id: @document_step_id,
	dependency_id: @dependency_id
	)
Dependency.create!(
	name: "pd_id",
	description:"Unique ID in the criminal justice system",
	input_type: "string"
	)
@dependency_id=Dependency.last.id
DocumentStepRequirement.create!(
	document_step_id: @document_step_id,
	dependency_id: @dependency_id
	)
Dependency.create!(
	name: "police_report",
	description:"Police account of incident",
	input_type: "textarea"
	)
@dependency_id=Dependency.last.id
DocumentStepRequirement.create!(
	document_step_id: @document_step_id,
	dependency_id: @dependency_id
	)
Dependency.create!(
	name: "docket_num",
	description:"Docket Number",
	input_type: "textarea"
	)
@dependency_id=Dependency.last.id
DocumentStepRequirement.create!(
	document_step_id: @document_step_id,
	dependency_id: @dependency_id
	)