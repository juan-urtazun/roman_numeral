require "../roman_numeral/roman_numeral"

describe RomanNumeral do
  before :each do
    @roman_numeral = RomanNumeral.new
  end
  { 1 => 'I',
    2 => 'II',
    3 => 'III',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    8 => 'VIII',
    9 => 'IX',
    10 => 'X',
    11 => 'XI',
    14 => 'XIV',
    18 => 'XVIII',
    20 => 'XX',
    39 => 'XXXIX',
    40 => 'XL',
    48 => 'XLVIII',
    50 => 'L',
    77 => 'LXXVII',
    90 => 'XC',
    96 => 'XCVI',
    100 => 'C',
    399 => 'CCCXCIX'


    }.each do |arabic, roman|
      context "When converting #{arabic}" do
        it {@roman_numeral.convert(arabic).should == roman}
      end
    end
  end
