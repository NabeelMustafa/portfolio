module BlogsHelper
  def back_link_helper
    # puts request.original_url
    if request.original_url  != request.referrer
      link_to 'Back', request.referrer
    else
      ""
    end
  end
end
