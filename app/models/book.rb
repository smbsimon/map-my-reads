class Book < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :title, :city, presence: true

  def as_json options={}
    {
      title: title
    }
  end


end
