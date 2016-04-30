Genre.destroy_all
Document.destroy_all
DocumentStep.destroy_all

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
        description:"step2"

)
