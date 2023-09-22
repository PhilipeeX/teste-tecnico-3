require 'spec_helper'
require '3_reverse_from_config'

RSpec.describe 'string to hash' do
  it 'should return a correct hash following settings from yml file' do
    arg = '97905796671Maria Neusa de00001234'

    file = 'lib/format-reverse.yml'
    correct_hash = { cpf: '97905796671', name: 'Maria Neusa de', value: '1234' }

    expect(SolucaoConfiguravel.solucao_reverse(arg, file)).to eq(correct_hash)
  end
  it 'should return a correct hash following settings from yml file' do
    arg = "44010762900Ricardo Fontes00000567"

    file = 'lib/format-reverse.yml'
    correct_hash = { cpf: '44010762900', name: 'Ricardo Fontes', value: '567' }

    expect(SolucaoConfiguravel.solucao_reverse(arg, file)).to eq(correct_hash)
  end
end
