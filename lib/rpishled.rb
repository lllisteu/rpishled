class Rpishled
end

%w(

  version

  detect

).each { |m| require "rpishled/#{m}" }
