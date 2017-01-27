class Temperature

  def initialize(args)
    if args[:f] == nil
      @temperature = args[ :c ]
      @c_exists = TRUE
    else
      @temperature = args[ :f ]
      @c_exists = FALSE
    end
  end

  def to_celsius
    if @c_exists
      return @temperature
    else
      return (@temperature - 32) * (5.0 / 9.0)
    end
  end

  def to_fahrenheit
    if @c_exists == FALSE
      return @temperature
    else
      return ((9 * @temperature) / 5.0) + 32
    end
  end

  def self.in_celsius(value)
    Temperature.new({ :c => value})
  end

  def self.in_fahrenheit(value)
    Temperature.new({ :f => value})
  end
end

class Celsius < Temperature
  def initialize(c)
    # @c_exists = TRUE
    # @temperature = c
    super({ :c => c})
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    # @c_exists = FALSE
    # @temperature = f
    super({ :f => f})
  end
end
