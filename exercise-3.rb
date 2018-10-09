class Calculator

  def initialize
    @display = Display.new
  end

  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def display
    @display.print_answer(self)
  end

end

class Display
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end
