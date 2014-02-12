class Scan < ActiveRecord::Base

  validates :content, presence: true

  def rows
    return self.content.split "\r\n"
  end

end