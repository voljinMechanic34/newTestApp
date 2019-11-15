data = HashWithIndifferentAccess.new(YAML::load_file(File.join(Rails.root, 'db', 'seeds.yml')))
i = 0
data[:projects].each do |project|
	
	p = Project.new(title: project[:title])
	p.save
	project[:todos].each do |todo|
		Todo.create(text: todo[:text],isCompleted: todo[:isCompleted],id_project: p.id)
	end
	
end