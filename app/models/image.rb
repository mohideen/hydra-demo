class Image < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::ImageMetadata
  has_file_datastream :name => 'imageContent', :type=>ActiveFedora::Datastream
  
  delegate :title, to: 'descMetadata'
  delegate :subject, to: 'descMetadata'
  delegate :format, to: 'descMetadata'
  delegate :type, to: 'descMetadata'
  
end
