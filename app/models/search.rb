class Search < ApplicationRecord
  belongs_to :category

  def search_poems
  	poems = Poem.all
 	poems = poems.where('title LIKE ?',tittle) if tittle.present?	
 	poems = poems.where('body LIKE ?',body) if body.present?
 	poems = poems.where('category_id == ?',category) if category.present?
  	return poems
  end

end
