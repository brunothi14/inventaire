module ApplicationHelper
	def comment
    # use this keyword in the views, to comment-out stuff...
  end
  
  def set_background_kfd(due_days)    
   return (due_days == 0) ? "backgroundRed" : "none"
  end
  
end