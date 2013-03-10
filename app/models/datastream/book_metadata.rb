class Datastream::BookMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.pid(index_as: :stored_searchable :facetable)
    t.title(index_as: :stored_searchable :facetable)
    t.author(index_as: :stored_searchable :facetable)
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
end
