class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name  
  end 

  def posts 
    Post.all.select {|posted| posted.author == self}
  end 

  def add_post(post)
    post.author = self 
  end 
  
  def add_post_by_title(title)
    posted = Post.new(title)
    add_posts(posted) 
  end
  
  def self.post_count
    Post.all.count 
  end 
  
end 
