ActiveAdmin.register User do

	permit_params :email, :password, :phone_number, :phone_number, :active

	controller do
	  def destroy
	    @user = User.find(params[:id])
	    if @user == current_user
    	 flash[:notice] = "Вы не можете удалить самого себя"
	      redirect_to admin_dashboard_path
	 	else
	 	 @user.destroy
	 	 flash[:notice] = "Вы успешно удалили пользователя"
	 	 redirect_to admin_dashboard_path
	 	end
	  end 
	end 

	form do |f|
	  f.inputs do 
	  	f.input :email
	  	f.input :phone_number
	  	f.input :password
	  	f.input :password_confirmation
	  	f.input :active
	  end
	  f.actions
	end
 

	index do
		selectable_column
		id_column
		# => Для аватарки
		# column :image do |place|
		# 	image_tag place.image.url(:thumb)
		# end
		column :active
		column :email
		column :phone_number
		# column :encrypted_password => Токен
	 	 actions
	end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end