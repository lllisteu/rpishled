class Rpishled

  # Reads the entire framebuffer. Returns a String of raw RGB565 data.
  def raw
    rewind
    read
  end

  # Writes raw RGB565 data directly to the framebuffer.
  def raw=(rgb565)
    rewind
    write rgb565
  end

end
