def contar_e_extrair_diamantes(expressao)
  diamantes = 0

  expressao_copy = expressao.dup  # Cria uma cópia da expressao para percorrer

  # Remove todos os pontos (.) da cópia.
  expressao_copy.gsub!('.', '')

  # Conta os diamantes na cópia e extrai um por vez da expressao original.
  expressao_copy.scan(/<[^<>]*>/) do |match|
    diamantes += 1
    expressao.sub!(match, '')  # Substitui o diamante na expressao original.
  end

  diamantes
end

expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

quantidade_diamantes = contar_e_extrair_diamantes(expressao)

puts "Quantidade de diamantes extraídos: #{quantidade_diamantes}"
puts "Expressão após extração: #{expressao}"
