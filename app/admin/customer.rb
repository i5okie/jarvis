ActiveAdmin.register Customer do
	permit_params :id, :name, :phone_number, :fax_number
  
	index do
    selectable_column
    column :name
    column :phone_number
    column :fax_number
    actions
  end

	form do |f|
		f.inputs 'Details' do
			f.input :name
			f.input :phone_number
			f.input :fax_number
		end
		f.inputs do
			f.has_many :contacts, heading: 'Contacts', allow_destroy: true do |a|
				a.input :first_name
				a.input :last_name
				a.input :email_address
				a.input :phone_number
				a.input :extension
				a.input :mobile_phone_number
			end
		end
		f.actions
	end
	
	show do
		panel "Details", only: :show do
			attributes_table_for customer do
				row :name
				row :phone_number
				row :fax_number
			end
		end
		
		panel "Contacts" do
			table_for customer.contacts do
				column :first_name
				column :last_name
				column :phone_number
				column :extension
				
			end
		end
		
		panel "Sales Orders" do
			table_for customer.sales_orders do
				column :number
				column :date
				column :shipping_address
			end
		end
		
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
