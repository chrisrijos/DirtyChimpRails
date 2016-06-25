class Video < ActiveRecord::Base
    has_attached_file :video, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :video, 
        :content_type => ['video/mp4'],
        :message => "Sorry, right now we only support MP4 video"
end
