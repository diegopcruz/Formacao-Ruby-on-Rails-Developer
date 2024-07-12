def funcao_sem_parametro
  puts "Olá estou em uma função."
end

funcao_sem_parametro

puts "========================================="

def funcao_com_parametro(nome)
  puts "Você passou o nome #{nome} na função."
end

funcao_com_parametro("Diego")
funcao_com_parametro "Diego"

puts "========================================="

def funcao_com_parametros(nome, idade)
  puts "Você passou o nome #{nome} com a idade #{idade} na função."
end

funcao_com_parametros("Taila", 29)
funcao_com_parametros "Taila", 29

puts "========================================="

def funcao_com_parametro_e_valor_padrao(nome = "Carlos")
  puts "Você passou o nome #{nome} na função com o nome padrão Carlos"
end

funcao_com_parametro_e_valor_padrao()
funcao_com_parametro_e_valor_padrao("Ribia")

puts "========================================="

def funcao_com_parametro_array(array = [])
  puts "Função com array - " + array.inspect
end

funcao_com_parametro_array
funcao_com_parametro_array([1, 2, 3])
funcao_com_parametro_array [4,5,6]

puts "========================================="

def funcao_com_parametro_hash(hash = {})
  puts "Função com hash - " + hash.inspect
end

funcao_com_parametro_hash
funcao_com_parametro_hash{[nome: "teste"]}
funcao_com_parametro_hash({nome: "teste", idade: 25})

puts "========================================="

def funcao_com_parametro_com_any_parametros(*parametros)
  puts "Função com any parametros - " + parametros.inspect
end

funcao_com_parametro_com_any_parametros
funcao_com_parametro_com_any_parametros 1,2,3
funcao_com_parametro_com_any_parametros("1",2.5,5)

puts "========================================="

def soma(a, b)
  return a + b # return é opcional
end

def soma_sem_return(a, b)
  a + b # ultima ação de uma função em Ruby é o que retorna
end

x = soma(1, 2)
y = soma_sem_return(1, 2)

puts "O resultado de X é =#{x} o resultado de y=#{y} !"

puts "========================================="


def soma_onde_retorna_maior_cinco(a, b)
  c = a + b
  return 10 if c > 5

  c * 20
end

puts "O resultado é: " + soma_onde_retorna_maior_cinco(1,2).to_s
puts "O resultado é: " + soma_onde_retorna_maior_cinco(5,2).to_s

puts "========================================="


def metodo_com_bloco
  yield if block_give?
end

metodo_com_bloco {puts "Bloco sendo executado!"}

metodo_com_bloco do
  puts "Bloco 1 sendo execultado"
  puts "Bloco 2 sendo execultado"
  puts "Bloco 3 sendo execultado"
  puts "Bloco 4 sendo execultado"
end
