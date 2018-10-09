### Exercise 2

**Use a diagram to group** the methods in this example:

```ruby
class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end
```

```

  ----------------
  |  * add       |
  |  * subtract  |
  ----------------

                --------------------
                |  * print_answer  |
                --------------------


```
### Exercise 3
Refactor the methods in the Calculator example into two classes as you see fit.

```ruby
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
```
