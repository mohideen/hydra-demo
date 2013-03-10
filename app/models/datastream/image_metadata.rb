class Datastream::ImageMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable :facetable)
    t.subject(index_as: :stored_searchable)
    t.format(index_as: :stored_searchable :facetable)
    t.type(index_as: :stored_searchable)
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
end
