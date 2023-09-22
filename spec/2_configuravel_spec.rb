require 'spec_helper'
require '2_configuravel'

RSpec.describe 'Hashes to string' do
  it 'should return a correct string with 2 different format files' do
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

    file1 = 'lib/format-1.yml'
    file2 = 'lib/format-2.yml'
    correct_string_file_1 = "97905796671Maria Neusa de00001234\n44010762900Ricardo Fontes00000567"
    correct_string_file_2 = "0009790579667100001234Sao Paulo     \n0004401076290000000567Rio Grande do "

    expect(SolucaoConfiguravel.solucao(args, file1)).to eq(correct_string_file_1)
    expect(SolucaoConfiguravel.solucao(args, file2)).to eq(correct_string_file_2)
  end
end
