class Rpishled < File
end

%w(

  version

  base

  detect

).each { |m| require "rpishled/#{m}" }
