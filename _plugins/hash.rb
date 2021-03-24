require 'digest/sha1'

module Jekyll::CustomFilter
  def sha1(str, length = 8)
    sha1 = Digest::SHA1.hexdigest(str)
    sha1[0, length.to_i]
  end
end

Liquid::Template.register_filter(Jekyll::CustomFilter)
