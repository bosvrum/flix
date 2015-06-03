module MoviesHelper

  def format_total_gross(movie)
    if movie.flop?
      content_tag(:strong, 'Flop')
    elsif movie.hit?
      content_tag(:strong, 'Hit')
    else  
      number_to_currency(movie.total_gross) 
    end
  end
end
