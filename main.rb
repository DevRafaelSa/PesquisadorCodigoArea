#Usando um hash para guardar nome e código da cidade
codigos_das_capitais = {
  "Aracajú" => "79",
  "Belo Horizonte" => "31",
  "Belém" => "91",
  "Fortaleza" => "85",
  "Goiânia" => "62",
  "João Pessoa" => "83",
  "Recife" => "81",
  "Salvador" => "71",
  "São Paulo" => "11",
  "Rio de Janeiro" => "21",
  "Porto Velho" => "69",
  "Teresina" => "86",
  "Vitória" => "27"
}

linha = "-" * 25

#Pegar o nome da cidade do hash
def get_city_name(some_hash)
  some_hash.keys
end

#Consultando o codigo de área baseado no hash e chave
def get_area_code(some_hash, key)
  some_hash[key]
end

#Fluxo de execução
loop do
  puts "Você gostaria de pesquisar o código de área com base no nome da cidade? (S/N)"
  answer = gets.chomp.downcase
  puts linha
  break if answer != "y"
  puts "Qual cidade você deseja saber seu código de área?"
  puts linha
  puts get_city_name(codigos_das_capitais)
  puts linha
  puts "Digite sua escolha:  "
  city_name = gets.chomp
  puts linha
  if codigos_das_capitais.include?(city_name)
    puts "O codigo de área de #{city_name} é #{get_area_code(codigos_das_capitais, city_name)}"
    puts linha
    puts linha
  else
    puts "O nome inserido não está correto. Favor repetir."
  end
end
