class PagesController < ApplicationController
  def qr_code_generator
    session.clear
  end

  def qr_code_download
    require "rqrcode"
    #create qrcode
    qr = RQRCode::QRCode.new(params[:content])
    #as a png format
    @png = qr.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "white",
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 400,
    )
  end
end
