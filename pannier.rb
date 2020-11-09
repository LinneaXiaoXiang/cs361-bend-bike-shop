# Pannier

class Pannier

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize()
    @cargo_contents = []
  end

  def add_cargo(item)
    if pannier_remaining_capacity <= pannier_capacity 
      self.cargo_contents << item
    end
  end

  def remove_cargo(item)
    self.cargo_contents.delete(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end
