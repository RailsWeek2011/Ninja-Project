module ApplicationHelper
  def mininav text
    html = "<div class='mininav'>"

    text.each do |element|
      html += element
      unless text.last == element
        html += " > "
      end
    end
    html += "</div>"
    html.html_safe
  end
end
