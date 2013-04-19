class ImagerenderController < ApplicationController
  
  def showimage
    @imageObj = Image.find(params["imagerender_id"])

    @imageData = @imageObj.datastreams["imageContent"].content
    @imageType = @imageObj.datastreams["imageContent"].mimeType
    send_data @imageData, :type => @imageType, :filename => 'ifile', :disposition => "inline"
  end

  def showtn
    @imageObj = Image.find(params["imagerender_id"])

    @imageData = @imageObj.datastreams["tnContent"].content
    @imageType = @imageObj.datastreams["tnContent"].mimeType
    send_data @imageData, :type => @imageType, :filename => 'itn', :disposition => "inline"
  end

end
