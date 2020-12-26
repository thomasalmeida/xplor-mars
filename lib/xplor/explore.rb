require "xplor/vehicle"

class Explore
  def self.call(input)
    return without_file if input.nil?

    with_file(input)
  end

  private

  def self.without_file
    puts 'Define maximum height. Example: 5 5'
    height = gets.chomp
    height = height.split(' ').map(&:to_i)

    puts 'Define initial positiom and pointer. Example: 1 2 N'
    current = gets.chomp
    current_position, current_pointer = Vehicle.get_position_pointer(current)

    puts 'Define list of commands. Example: LMLMLMLMM'
    commands = gets.chomp
    commands = commands.chars

    Vehicle.run_commands(commands, current_position, current_pointer, height)
  end

  def self.with_file(input)
    lines = File.readlines(input).map { |line| line.delete!("\n") }
    height = lines.shift.split(' ').map(&:to_i)

    response = []
    (0..lines.size - 1).step(2).each do |index|
      current_position, current_pointer = Vehicle.get_position_pointer(lines[index])

      commands = lines[index + 1].chars
      response << Vehicle.run_commands(commands, current_position, current_pointer, height)
    end

    response.join("\n")
  end
end
