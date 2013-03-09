class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::BookMetadata

  delegate :title, to: 'descMetadata'
  delegate :author, to: 'descMetadata'

end
