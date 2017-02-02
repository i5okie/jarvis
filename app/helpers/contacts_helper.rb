module ContactsHelper
	def phone_formatted(number, ext)
    if ext
      number_to_phone(number, area_code: true, extension: ext)
    else
      number_to_phone(number, area_code: true)
    end
  end
end
