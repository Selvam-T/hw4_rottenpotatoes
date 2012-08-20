class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def up
    add_column :movies, :director, :string, :default => nill
  end

  def down
    remove_column :movies, :director
  end
  
end
