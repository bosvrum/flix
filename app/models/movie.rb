class Movie < ActiveRecord::Base

  def flop?
    total_gross.blank? || total_gross < 50000000 
  end

  def hit?
    total_gross > 300000000
  end

  def self.released
    where("released_on <= ?", Time.now).order("released_on DESC")
  end

  def self.recently_added
    where("created_at <= ?", Time.now).order("created_at DESC")
  end
end
