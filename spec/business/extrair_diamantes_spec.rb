require_relative '../../app/business/extrair_diamantes_e_areias'

RSpec.describe 'contar_e_extrair_diamantes' do
  it 'deve extrair areias e contar diamantes corretamente' do
    expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
    quantidade_diamantes = contar_e_extrair_diamantes(expressao)

    expect(quantidade_diamantes).to eq(7)

    # Outro exemplo
    expressao2 = '<<<>.>.><<<>>>'
    quantidade_diamantes2 = contar_e_extrair_diamantes(expressao2)

    expect(quantidade_diamantes2).to eq(2)
  end
end
