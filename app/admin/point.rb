ActiveAdmin.register Point do

permit_params :longtitude, :latitude, :tracker_id, :message

form do |f|
  f.inputs do 
	f.input :longtitude
  	f.input :latitude
  	f.input :message
  	f.input :tracker_id, :label => 'Трекера', :as => :select, :collection => Tracker.all.map{|u| ["#{u.imei_code}", u.id]}
  end
  f.actions
end

index do
	selectable_column
	id_column
	column :longtitude
	column :latitude
	column :message
	column :tracker
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
