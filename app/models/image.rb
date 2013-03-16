class Image < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::ImageMetadata
  has_file_datastream :name => 'imageContent', :type=>ActiveFedora::Datastream
  
  delegate :title, to: 'descMetadata', :allow_nil => true
  delegate :subject, to: 'descMetadata', :allow_nil => true
  delegate :format, to: 'descMetadata', :allow_nil => true
  delegate :type, to: 'descMetadata', :allow_nil => true
 
  #attr_accessible :f_title, :f_subject, :f_format, :f_type
  
  def f_title
    self.title[0]
  end

  def f_title=(new_value)
    self.title = new_value
  end

  def f_subject
    self.subject[0]
  end

  def f_subject=(new_value)
    self.subject = new_value
  end

end
