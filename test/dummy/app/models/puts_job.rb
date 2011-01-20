class PutsJob < Struct.new(:text)
  def perform
    puts text
  end
end
