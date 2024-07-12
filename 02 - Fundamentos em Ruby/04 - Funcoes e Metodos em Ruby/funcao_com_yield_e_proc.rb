def my_method
  yield if block_given?
end

my_method { puts "Bloco sendo executado!"}
my_method do
  puts "Bloco sendo executado!"
end
say_hello = Proc.new { puts "Ola, mundo!"}
say_hello.call

puts "======================================="

def execute_proc(p)
  p.call
end

my_proc = Proc.new {puts "Executando o proc!"}
execute_proc(my_proc)

puts "======================================="

multiply = Proc.new do |a, b|
  a * b
end

result = multiply.call(6,7)
puts result

puts "======================================="

#Lambda
say_goodbye = lambda {puts "Tchau, mundo!"}
say_goodbye.call

say_goodbye = -> {puts "Tchau, mundo!"}
say_goodbye.call

puts "======================================="

adder = lambda do |a, b|
  a + b
end

# Quando eu lanço o lambda sem parametro, ele da uma exceção pedindo os parametros
sum = adder.call()

sum = adder.call(5,8)
puts sum
