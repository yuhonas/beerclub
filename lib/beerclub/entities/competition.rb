class Competition < Hanami::Entity
  def to_s
    title
  end
  
  def active?
    Time.now >= date_start && Time.now < date_end
  end
end
