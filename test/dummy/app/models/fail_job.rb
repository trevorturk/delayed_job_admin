class FailJob < Struct.new(:text)
  def perform
    raise text
  end
end
