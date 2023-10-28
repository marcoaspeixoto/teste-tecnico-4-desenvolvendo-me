def contar_e_extrair_diamantes(expressao)
  diamantes = 0

  # Remove todos os pontos (.)
  expressao.gsub!('.', '')

  # Conta os diamantes
  expressao.scan(/<[^<>]*>/) do |match|
    diamantes += 1
  end

  diamantes
end

expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

quantidade_diamantes = contar_e_extrair_diamantes(expressao)

puts "Quantidade de diamantes extraídos: #{quantidade_diamantes}"
