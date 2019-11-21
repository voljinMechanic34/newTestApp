class PostsController < ApplicationController
	 protect_from_forgery except: :new
	
	def index 
		@proj = Project.all
		@todos = Todo.all
	end

	def create
		#@todo1 = Todo.new(todos_params)

			@id_Category = params[:post1][:category]
			Rails.logger.info "Some debugging info #{@id_Category}"
			@text = params[:post1][:text]
			if @text != ''
				t = Todo.new(text: @text,isCompleted: false,id_project: @id_Category)
				t.save
				redirect_to root_url
			else 
				
				render html: "<script>alert('Введите задачу!')</script>".html_safe

			end
		
		
	end
	def postForm
		@todo_id = params[:id_todo]
		@todo_isCompleted = params[:todo_completed]
		todo_update = Todo.find(@todo_id )
		todo_update.isCompleted = @todo_isCompleted
		todo_update.save
		
		

	end
	def getForm
	end
	def show 
		
	end

	def new
		
	end


end
