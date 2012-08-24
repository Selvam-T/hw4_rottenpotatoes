class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.same_director_movies(id)
    if !id.nil?
      movie = self.find_by_id(id)
      if !movie.nil?
        direct = movie.director
        if !direct.nil? && !direct.empty?
          return self.find(:all, :conditions =>["director = ? AND title <> ? ", direct, movie.title] )
        end
      end
    end
    
    return nil
  end
end
