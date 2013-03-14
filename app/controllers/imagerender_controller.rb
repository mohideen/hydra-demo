class ImagerenderController < ApplicationController
  
  def showimage
    @imageObj = Image.find("changeme:5")
    @imageData = @imageObj.datastreams["imageContent"].content
    @imageType = @imageObj.datastreams["imageContent"].mimeType
    send_data @imageData, :type => @imageType, :filename => 'ifile', :disposition => "inline"
  end


end
