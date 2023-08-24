require 'spec_helper'
require '1_hashes_to_string'

RSpec.describe 'Hashes to string' do
  it 'should return a correct string' do
    args = [
      { name: 'Maria Neusa de Aparecida',
        cpf: '97905796671',
        state: 'Sao Paulo',
        value: '1234' },
      { name: 'Ricardo Fontes',
        cpf: '44010762900',
        state: 'Rio Grande do Sul',
        value: '567' }
    ]

    correct_string = "Maria Neusa97905796671Sao Paulo  1234       \nRicardo Fon44010762900Rio Grande 567        "

    expect(solucao(args)).to eq(correct_string)
  end

  it 'should return correct string with 5 hashes' do
    args = [
      { name: 'Maria Neusa de Aparecida',
        cpf: '97905796671',
        state: 'Sao Paulo',
        value: '1234' },
      { name: 'Ricardo Fontes',
        cpf: '44010762900',
        state: 'Rio Grande do Sul',
        value: '567' },
      { name: 'Luísa Fernandes',
        cpf: '12345678910',
        state: 'Minas Gerais',
        value: '890' },
      { name: 'Roberto Almeida',
        cpf: '23456789101',
        state: 'Bahia',
        value: '1122' },
      { name: 'Fernanda Lima',
        cpf: '34567891012',
        state: 'Ceará',
        value: '1345' }
    ]

    correct_string = "Maria Neusa97905796671Sao Paulo  1234       \nRicardo Fon44010762900Rio Grande 567        \nLuísa Ferna12345678910Minas Gerai890        \nRoberto Alm23456789101Bahia      1122       \nFernanda Li34567891012Ceará      1345       "
    expect(solucao(args)).to eq(correct_string)
  end
end