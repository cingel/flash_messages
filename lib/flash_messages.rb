module FlashMessages
  
  def render_flash_messages
    msg = nil
    class_name = nil
    [:notice, :success, :alert, :error, :info].each do |key|
      unless flash[key].blank?
        msg = flash[key]
        class_name = key
        break
      end
    end
    msg.blank? ? "" : content_tag(:div, msg, :class => "flash_msg flash_msg_#{class_name}")
  end
  
end
