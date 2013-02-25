ActiveAdmin.register Work do
  
  controller do
    #@work = Work.new
    #@new_attachment = @work.attachments.build
  end
  
  form do |f|
    f.inputs "Work Items" do
      f.input :title
      f.input :project_url
      f.input :description
      f.input :tag_list
      f.input :featured_thumbnail, :as => :file, :hint => ( image_tag(f.object.featured_thumbnail, :width => 200) unless f.object.featured_thumbnail.blank?)
      f.has_many :attachments do |p|
        p.input :file, :hint => ( p.template.image_tag(p.object.file_url, :width => "200")  + link_to("Delete Attachment", admin_attachment_path(p.object), :method => :delete, :confirm => "Are you sure") if p.object.file_url )
      end
    end
    f.actions
  end
end
