ActiveAdmin.register Course do
	permit_params :coursename, :teacher, :start_date, :end_date
	menu :priority => 2

	index do
		selectable_column
		id_column
		column "Course name", :coursename
		column "Teacher", :teacher
		column "Enrolled students", :enrolled_sutdents
		column "Start date", :start_date
		column "End date", :end_date
		column :created_at
		column :updated_at
		actions
	end

	form do |f|
    	f.inputs "New course" do
	      f.input :coursename
	      f.input :teacher
	      f.input :start_date, as: :datepicker
	      f.input :end_date, as: :datepicker
        end
        f.actions
  	end
end
