class Rpishled < File
end

%w(

  version

  base

  detect

  gamma

).each { |m| require "rpishled/#{m}" }
