ActiveAdmin.register Work do
  
  controller do
    @work = Work.new
    @new_attachment = @work.attachments.build
  end
  
  form do |f|
    f.inputs "Work Items" do
      f.input :title
      f.input :description
      f.input :featured_thumbnail, :as => :file
      f.has_many :attachments do |p|
       
        p.input :file, :hint => ( p.template.image_tag(p.object.file_url, :width => "200")  + link_to("Delete Attachment", admin_attachment_path(p.object), :method => :delete, :confirm => "Are you sure") if p.object.file_url )
      end
    end
    f.actions
  end
end
