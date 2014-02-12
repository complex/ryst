class Scan < ActiveRecord::Base

  validates :content, format: /\t+/

  def rows
    return self.content.split "\r\n"
  end

  def formatted_time

    if self.created_at > 24.hours.ago
      format = "%H:%M"
    else
      format = "%H:%M, %Y/%m/%d"
    end

    return self.created_at.strftime format

  end

end