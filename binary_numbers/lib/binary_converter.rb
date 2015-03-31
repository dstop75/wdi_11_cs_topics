module BinaryConverter
  def self.to_fixnum(binary_string)
    decimal = 0
    binary_string.split('')
                 .map(&:to_i)
                 .reverse
                 .each_with_index { |num, index|
                   decimal += (num * 2 ** index)
                 }
    decimal
  end
end
