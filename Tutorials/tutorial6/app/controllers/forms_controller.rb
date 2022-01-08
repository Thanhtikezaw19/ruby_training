class FormsController < ApplicationController
  def index
    session.clear
  end

  def save_img
    @folder_name = params[:folder_name]
    @path = "public/#{@folder_name}"
    #create a newfolder if dir doesn't exist
    unless File.exists? (@path)
      Dir.mkdir (@path)
      @pic = params[:picture]
      img_name = @pic.original_filename
      #copy_image
      FileUtils.copy_file(@pic.tempfile, "#{@path}/#{img_name}", preserve = false, dereference = true)
      session[:img_dir] = "/#{@folder_name}/#{img_name}"

      redirect_to show_img_path
    else
      redirect_to root_path
    end
  end

  def show_img
    session[:img_dir] = "/#{@folder_name}/#{img_name}"
  end
end
