class MechController < ApplicationController
  def sheet_metal
    if params[:shape] && params[:thickness] && params[:density]

    t = params[:thickness].to_f / 1000   # mm → m
    density = params[:density].to_f      # kg/m³

    case params[:shape]

    when "plate"
      l = params[:length].to_f / 1000
      w = params[:width].to_f / 1000
      volume = l * w * t

    when "circle"
      d = params[:diameter].to_f / 1000
      r = d / 2
      volume = Math::PI * r * r * t

    when "ring"
      d1 = params[:outer_diameter].to_f / 1000
      d2 = params[:inner_diameter].to_f / 1000
      r1 = d1 / 2
      r2 = d2 / 2
      volume = Math::PI * (r1**2 - r2**2) * t

    else
      volume = 0
    end

    @weight = volume * density
    end
  end

  def material_selection
  end

  def product_design
  end
end
