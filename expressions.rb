# Dijkstra's Two-Stack Algorithm for Expression Evaluation,
# see examples in test/expressions_test.rb
def evaluate(expression)
  operators = []
  values = []

  expression.each_char do |ch|
    next if ch == '('

    if ch == ')'
      operator = operators.shift
      value2 = values.shift
      value1 = values.shift
      result = value1.send(operator, value2)
      values.unshift(result)
    elsif '+-*/'.include?(ch)
      operators.unshift(ch)
    else
      values.unshift(ch.to_i)
    end
  end

  values.shift
end
