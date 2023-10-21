require_relative '../../app/business/extrair_diamantes_e_areias'

RSpec.describe 'contar_e_extrair_diamantes' do
  it 'deve contar e extrair diamantes corretamente' do
    expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
    quantidade_diamantes = contar_e_extrair_diamantes(expressao)

    # Verifique a quantidade correta de diamantes
    expect(quantidade_diamantes).to eq(7)

    # Verifique a expressão após a extração
    expect(expressao).to eq('')

    # Outro exemplo
    expressao2 = '<<<>>><<<>>>'
    quantidade_diamantes2 = contar_e_extrair_diamantes(expressao2)

    expect(quantidade_diamantes2).to eq(3)
    expect(expressao2).to eq('')
  end
end
