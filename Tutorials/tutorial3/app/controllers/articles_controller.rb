class ArticlesController < ApplicationController
  def index
  end

  def calculate_age
    dob = params[:dob]
    logger.info(dob)

    if params.has_key?(:dob) 
    @birthday = Date.parse(params[:dob])
    years = ((Time.zone.now - @birthday.to_time) / 1.year.seconds).floor
   
  end
    redirect_to "/result?age=#{years}"
end

end
