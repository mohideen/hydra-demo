module BlacklightHelper

  include Blacklight::BlacklightHelperBehavior

  def application_name
    "Hydra - University of Maryland Libraries"
  end
  
  def link_to_document(doc, opts={:label=>nil, :counter => nil, :results_view => true})
    opts[:label] ||= blacklight_config.index.show_link.to_sym
    label = render_document_index_label doc, opts
    url = "image/"+doc.id 
    #link_to label, doc, { :data-counter => opts[:counter] }.merge(opts.reject { |k,v| [:label, :counter, :results_view].include? k  })
    link_to label, url
    
  end

end
