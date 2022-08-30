module Jekyll

  class EventDateGenerator < Generator
    safe true
    def generate(site)
      site.posts.each do |post|
        post.data['eventstart'] = post.date + (18.5 * 60 * 60)
        post.data['eventend'] = post.date + (23 * 60 * 60)
      end

    end
  end

end

