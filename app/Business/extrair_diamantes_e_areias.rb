def contar_e_extrair_diamantes(expressao)
  diamantes = 0

  # Remova todos os pontos (.)
  expressao.gsub!('.', '')

  # Agora, conte os diamantes no que sobrou e extraia um por vez.
  expressao.scan(/<[^<>]*>/) do |match|
    diamantes += 1
    expressao.sub!(match, '') # Substitui o diamante pelo vazio.
  end

  diamantes
end

expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

quantidade_diamantes = contar_e_extrair_diamantes(expressao)

puts "Quantidade de diamantes extraídos: #{quantidade_diamantes}"
puts "Expressão após extração: #{expressao}"
