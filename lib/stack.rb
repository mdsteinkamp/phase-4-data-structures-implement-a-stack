class Stack

  def initialize(limit = nil)
    @stack = []
    @limit = limit
  end

  def push(value)
    raise 'Stack Overflow' if full?
    @stack.push(value)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def search(value)
    @stack.each_with_index do |item, idx|
      return size - idx - 1 if item == value
    end
    -1
  end

  def full?
    @limit && @stack.size == @limit
  end


end