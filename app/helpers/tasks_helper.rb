module TasksHelper
  def checkmark(task)
    html = task.completed? ? '<i class="far fa-check-square"></i>' : '<i class="far fa-square"></i>'
    html.html_safe
  end
end
