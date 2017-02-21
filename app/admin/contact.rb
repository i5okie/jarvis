ActiveAdmin.register Contact do
	permit_params :id, :contact_alias, :phone_number, :extension, :mobile_phone_number, :first_name, :last_name, :email_address, :customer_id

	index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email_address
    column :customer_id
    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
