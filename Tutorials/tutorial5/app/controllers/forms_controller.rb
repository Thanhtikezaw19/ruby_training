class FormsController < ApplicationController
  def index
  end

  def updata
    logger.info(:fupload)
    #add uploaded file to a variable
    @file = params[:fupload][:txtfile]
    #read the file and add it to another variable
    newfile = @file.read
    logger.info(newfile)
    #redirect to file_info with variable pass
    redirect_to "/file_info?uploadfile=#{newfile}"


  end

  def info 
  end
end