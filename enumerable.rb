module MyEnumerable
  def all?
    each { |el| return false unless yield el }
    true
  end

  def any?
    each { |el| return true if yield el }
    false
  end

  def filter?
    list = []
    each { |el| list.push(el) if yield el }
    list
  end
end
