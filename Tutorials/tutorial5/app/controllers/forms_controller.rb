class FormsController < ApplicationController
  def upload_data
    # add uploaded file to a variable
    @file = params[:form_upload][:txtfile]
    # read the file and add it to another variable
    newfile = @file.read
    # redirect to file_info with variable pass
    redirect_to "/file_info?uploadfile=#{newfile}"
  end
end