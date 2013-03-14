class Image < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::ImageMetadata
  has_file_datastream :name => 'imageContent', :type=>ActiveFedora::Datastream
  
  delegate :title, to: 'descMetadata', :allow_nil => true
  delegate :subject, to: 'descMetadata', :allow_nil => true
  delegate :format, to: 'descMetadata', :allow_nil => true
  delegate :type, to: 'descMetadata', :allow_nil => true
  
end
