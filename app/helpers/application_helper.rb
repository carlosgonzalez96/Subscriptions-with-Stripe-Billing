module ApplicationHelper
  def bootstrap_class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end
  
  def avatar_path(object, options = {})
    size = options[:size] || 180
    default_image = options[:default] || "mp"
    base_url =  "https://secure.gravatar.com/avatar"
    base_url_params = "?s=#{size}&d=#{default_image}"
    
    if object.respond_to?(:avatar) && object.avatar.attached? && object.avatar.variable?
      object.avatar.variant(resize_to_fill: [size, size, { gravity: 'Center' }])
    elsif object.respond_to?(:email) && object.email
      gravatar_id = Digest::MD5::hexdigest(object.email.downcase)
      "#{base_url}/#{gravatar_id}#{base_url_params}"
    else
      "#{base_url}/00000000000000000000000000000000#{base_url_params}"
    end
  end
  
    def formatted_amount(amount, options={})
      number_to_currency(amount.to_i / 100.0, options)
    end

  def plan_for_id(id)

    if id == "price_1Ijb2WDXobRpcK7sewm9ZT71"
      id = "Small Monthly"

    elsif id == "price_1Ijb3fDXobRpcK7siYcTzSMB"
      id = "Small Annual"
      
    elsif id == "price_1Ijb4fDXobRpcK7shsMyPWtp"
      id = "Large Monthly"

    elsif id == "price_1Ijb4FDXobRpcK7sCpY5AKYX"
      id = "Large Annual"
    end
  
  end

end
