class Video < ActiveRecord::Base
    has_attached_file :video, default_url: "/video/missing?"
    
    has_attached_file :video, :styles => {
    :medium => { :geometry => "640x480", :format => 'mp4' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:transcoder]
    validates_attachment_content_type :video, 
        :content_type => ['video/mp4'],
        :message => "Sorry, right now we only support MP4 video"
end
