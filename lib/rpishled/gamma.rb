class Rpishled

  # Returns the current gamma lookup table.
  #
  # The lookup table is an array of 32 integers in the range 0..31.
  def gamma_lookup_table
    a = ''
    ioctl 61696, a
    a[0..31].bytes
  end

  # Loads and activates a user defined gamma lookup table.
  #
  # The lookup table must be given as an array of 32 integers in the range 0..31.
  def gamma_lookup_table=(table)
    if (table.size == 32) and (table.all? { |v| v.respond_to? :chr })
      ioctl 61697, table.map(&:chr).join
    else
      raise 'Invalid gamma lookup table'
    end
  end

  # Activates the built-in low light gamma.
  def gamma_low_light
    ioctl 61698, 1
  end

  # Resets the gamma to default.
  def gamma_reset
    ioctl 61698, 0
  end

  # Loads and activates a linear gamma lookup table as the user defined gamma.
  def gamma_linear
    ioctl 61697, (0..31).each.map(&:chr).join
  end

  # Activates the last user defined gamma.
  def gamma_user
    ioctl 61698, 2
  end

end
