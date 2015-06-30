class LibraryManager

  #betterspecs.org
  attr_accessor :reader_with_book, :issue_datetime

  def initialize reader_with_book, issue_datetime
    @reader_with_book = reader_with_book
    @issue_datetime = issue_datetime

  end
  

  def penalty
    hours_overdue = (Time.now.utc.to_i - issue_datetime.to_time.to_i)/3600
    reader_with_book.penalty(hours_overdue)
  end

  def could_meet_each_other? first_author, second_author

  end

  def days_to_buy

  end

  def transliterate author

  end

  def penalty_to_finish

  end

  # this is a placeholder. Just ignore it for the moment.
  def email_notification_params
    {
      penalty
      hours_to_deadline
    }

  end

  def email_notification

  end

end
