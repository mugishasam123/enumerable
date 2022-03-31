require_relative './my_enumerable'

class MyList
  include MyEnumerable

  @list = []

  def initialize(*arg)
    @list = arg
  end

  def each(&enumerable)
    @list.each(&enumerable)
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.filter?(&:even?)
