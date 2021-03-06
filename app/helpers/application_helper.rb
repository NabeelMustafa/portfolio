module ApplicationHelper
  def login_helper
   if current_user.is_a?(GuestUser)
     # link_to "Login", new_user_session_path
     "login"
   else
     # link_to "Logout", destroy_user_session_path, method: :delete
     "logout"
   end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting from  #{session[:source]}"
      content_tag(:p, greeting, class: "source-helper")
    end
  end

  def active? path
    "active" if current_page? path
  end
end
