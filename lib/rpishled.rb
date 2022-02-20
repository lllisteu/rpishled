class Rpishled < File
end

%w(

  version

  base

  detect

  gamma

  framebuffer

).each { |m| require "rpishled/#{m}" }
