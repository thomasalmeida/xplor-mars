class Explore
  def self.call(input)
    return without_file if input.nil?

    with_file(input)
  end

  private

  def self.without_file
  end

  def self.with_file(input)
  end
end
