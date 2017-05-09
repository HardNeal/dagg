ActiveAdmin.register Tracker do

permit_params :imei_code, :phone, :user_id

form do |f|
  f.inputs do 
	f.input :title
  	f.input :imei_code
  	f.input :phone
  	f.input :user_id, :label => 'Наблюдающие', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
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
	column :title
	column :imei_code
	column :phone
	column :user
  column :active
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
