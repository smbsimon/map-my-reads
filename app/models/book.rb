class Book < ActiveRecord::Base
  belongs_to :user

  def as_json options={}
    {
      title: title
    }
  end


end
