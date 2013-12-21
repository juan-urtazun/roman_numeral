class RomanNumeral

  def initialize
    @ref ={
      1 => 'I',
      4 => 'IV',
      5 => 'V',
      9 => 'IX',
      10 => 'X',
      40 => 'XL',
      50 => 'L',
      90 => 'XC',
      100 => 'C',
      400 => 'CD',
      500 => 'D'
    }

  end

  def convert(arabic)

    result = []
    while arabic > 0
      key =  @ref.has_key?(arabic) ? arabic : find_clossest_key_for(arabic)
      result << @ref[key]
      arabic -= key
    end
    result.join()
  end

  private

  def find_clossest_key_for arabic
    @ref.keys.select{|k| k < arabic}.max || 0
  end

end
