require 'account'

class Date_finder

  def retrieve_date
    Time.now.strftime("%d / %m / %Y")
  end

end
