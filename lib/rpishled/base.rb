class Rpishled

  # Opens the framebuffer and returns a writable File object.
  def initialize
    if fb_dev
      if File.writable?(fb_dev)
        super fb_dev, 'r+b'
        self.sync = true
      else
        raise "Device #{fb_dev} not writable"
      end
    else
      raise 'No framebuffer device'
    end
  end

  # Clears the LED matrix.
  def clear
    rewind
    write "\x00" * 128
  end

end
