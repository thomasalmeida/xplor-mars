class Vehicle
  MOVEMENTS = { 'N': [0, 1], 'E': [1, 0], 'S': [0, -1], 'W': [-1, 0] }.freeze
  POINTER = ['N', 'E', 'S', 'W'].freeze

  def self.get_position_pointer(value)
    value = value.split(' ')

    [[value[0].to_i, value[1].to_i], value[2].capitalize]
  end

  def self.run_commands(commands, position, pointer, height)
  end

  def self.action(command, position, pointer)
  end

  def self.move(position, pointer)
    movement = MOVEMENTS[pointer.to_sym]

    [position.first + movement.first, position.last + movement.last]
  end

  def self.rotate(direction, pointer)
  end
end
