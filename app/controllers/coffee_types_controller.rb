class CoffeeTypesController < ApplicationController

	def index
		@coffee_types=CoffeeType.all
	end

	def create
		@coffee=CoffeeType.create(:bean_name=>params[:bean_name],:discription=>params[:discription],:location=>params[:coffee_type][:location])
        unless @coffee.errors.present?
        	(render :js=>"$('table.index_listing').append('#{ html_gen(@coffee)}');") and return; 
        end		
        render :js=>"alert('make sure that bean name is not empty and unique.........')"
	end

	def show
		@coffee_type=CoffeeType.find(params[:id])
	end

	def edit
		@coffee_type=CoffeeType.find(params[:id])
		(params[:bean_name]=@coffee_type.bean_name) if(params[:bean_name]=="")
		(params[:discription]=@coffee_type.discription) if(params[:discription]=="")
		(params[:location]=@coffee_type.location) if(params[:coffee_type][:location]=="")
		@coffee_type.update_attributes(:bean_name=>params[:bean_name],:discription=>params[:discription],:location=>params[:coffee_type][:location])
		unless @coffee_type.errors.present?
             (redirect_to '/coffee_types/'+@coffee_type.id.to_s )and return					
		end
		render :js=>"alert('something went wrong tryagain........');"

	end	

	def destroy
		@coffee_types=CoffeeType.find(params[:id]).delete
		unless @coffee_types.errors.present?
			(redirect_to root_url )and return
		end
		render :text=>"something went wrong tryagain......."	
	end

	def tried
		@coffee_type=CoffeeType.where(:id=>params[:id])
		if @coffee_type
	        UserTry.find_or_create_by_user_id_and_coffee_type_id(current_user.id,params[:id])
	        (render :js=>"$('##{ @coffee_type[0].id.to_s+'try'}').hide().after('<p>tried</p>');")and return
	    else
	    	render :js=>"alert('tryagain......');"
	    end        
	end

	def comment
		@coffee_type=CoffeeType.find(params[:id])
        comm=Comment.create(:comment=>params[:comment],:user_id=>current_user.id)
          if params[:email].present?
          	current_user.update_attribute(:email,params[:email])
          end	
		@coffee_type.comments << comm 
		@coffee_type.save
		unless @coffee_type.errors.present?			
			(render :js=>"$('.comments').append('<p><strong>User:</strong>#{ (comm.user.email.present?) ? (comm.user.email):('Unknown') }</p><strong>Comment:</strong><p>#{comm.comment}</p>');")and return
		end	
		render :js=>"alert('tryagain.......');"
	end

	private

	def html_gen(coffee)
		"<tr><td>#{ coffee.bean_name }</td><td>#{ coffee.discription }</td><td>#{  coffee.location } </td><td>#{ coffee.people_tried }</td></tr>"
	end	
    
end
