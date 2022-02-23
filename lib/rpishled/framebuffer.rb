class Rpishled

  # Reads or writes the framebuffer.
  def raw(rgb565=nil)
    rewind
    if rgb565
      write rgb565
    else
      read
    end
  end

end
