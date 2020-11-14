class SSS
  def initialize(str)
    str
  end
  @obj = SSS.new("abcde")
  private_class_method :initialize

  def self.ins
    @obj
  end
end

a = SSS.ins
b = SSS.ins

puts a == b