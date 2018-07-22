# frozen_string_literal: true

module Helpers # :nodoc:
  def fixtures_path
    File.expand_path '../fixtures', __dir__
  end

  def assets_path
    File.expand_path 'assets', fixtures_path
  end

  def fonts_path
    File.expand_path 'fonts', assets_path
  end

  def images_path
    File.expand_path 'images', assets_path
  end

  def javascripts_path
    File.expand_path 'javascripts', assets_path
  end

  def stylesheets_path
    File.expand_path 'stylesheets', assets_path
  end

  def vendor_path
    File.expand_path 'vendor', fixtures_path
  end

  def vendor_assets_path
    File.expand_path 'assets', vendor_path
  end

  def vendor_fonts_path
    File.expand_path 'fonts', vendor_assets_path
  end

  def vendor_images_path
    File.expand_path 'images', vendor_assets_path
  end

  def vendor_javascripts_path
    File.expand_path 'javascripts', vendor_assets_path
  end

  def vendor_stylesheets_path
    File.expand_path 'stylesheets', vendor_assets_path
  end
end