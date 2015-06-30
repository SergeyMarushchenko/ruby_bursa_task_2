class PublishedBook < Book
  attr_accessor :price, :pages_quantity, :published_at

  def initialize author, title, price, pages_quantity, published_at
    @price = price
    @pages_quantity = pages_quantity
    @published_at = published_at
    super author, title
  end

  def age
  	book_age = Time.now.utc.year - published_at - 1
  end

  def penalty_per_hour
    price_penalty = price*0.0005
    pages_penalty = price*0.000003*pages_quantity
    age_penalty = price*0.00007*age
    price_penalty+pages_penalty+age_penalty
  end
    puts PublishedBook.new.penalty_per_hour
end
