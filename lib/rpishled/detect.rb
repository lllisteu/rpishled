class Rpishled

  # Returns the id for the LED matrix framebuffer.
  def fb_id
    unless defined? @fb_id
      @fb_id = detect_fb_id
    end
    @fb_id
  end

  # Returns the device node for the LED matrix framebuffer.
  def fb_dev
    unless defined? @fb_dev
      @fb_dev = detect_fb_dev
    end
    @fb_dev
  end

  private

  # Detects the id for the LED matrix framebuffer.
  def detect_fb_id
    Dir.glob('/sys/class/graphics/fb*/name').each do |file|
      if (File.readable? file ) and ( (File.read file).chomp == 'RPi-Sense FB' )
        return file.sub /.*\/(fb\S+)\/name$/, '\1'
      end
    end
    nil
  end

  # Detects the device node for the LED matrix framebuffer.
  def detect_fb_dev
    if fb_id
      dev = "/dev/#{fb_id}"
      (File.exist? dev) ? dev : nil
    end
  end

end
