class Page < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::PageMetadata
  has_file_datastream :name => 'pageContent', :type=>ActiveFedora::Datastream
  
  belongs_to :book, :property=> :is_part_of

  delegate :number, to: 'descMetadata'
  delegate :text, to: 'descMetadata'
end
