class Vehicle
  MOVEMENTS = { 'N': [0, 1], 'E': [1, 0], 'S': [0, -1], 'W': [-1, 0] }.freeze
  POINTER = ['N', 'E', 'S', 'W'].freeze

  def self.get_position_pointer(value)
    value = value.split(' ')

    [[value[0].to_i, value[1].to_i], value[2].capitalize]
  end

  def self.run_commands(commands, position, pointer, height)
    response = []

    commands.each do |command|
      position, pointer = action(command, position, pointer)
    end

    if (position.first > height.first || position.last > height.last) || position.first < 0 || position.last < 0
      alert = "[Your space vehicle is out of range]"
    end

    response << "#{position.join(' ')} #{pointer} #{alert}"
    response.join("\n")
  end

  def self.action(command, position, pointer)
    case command
    when 'M' then [move(position, pointer), pointer]
    when 'L', 'R' then [position, rotate(command, pointer)]
    end
  end

  def self.move(position, pointer)
    movement = MOVEMENTS[pointer.to_sym]

    [position.first + movement.first, position.last + movement.last]
  end

  def self.rotate(direction, pointer)
    index = POINTER.find_index(pointer)

    case direction
    when 'L' then index -= 1
    when 'R' then index += 1
    end

    return POINTER.last if index < 0
    return POINTER.first if index >= POINTER.size

    POINTER[index]
  end
end
