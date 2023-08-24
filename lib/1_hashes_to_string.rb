def solucao(arr)
  output = []
  arr.each do |hash|
    output << hash.values.map { |value| value.to_s[0,11].ljust(11) }
    output << ("\n") unless arr[arr.length - 1] == hash
  end
  output.join
end

p solucao([
          { name: 'Maria Neusa de Aparecida',
            cpf: '97905796671',
            state: 'Sao Paulo',
            value: '1234' },
          { name: 'Ricardo Fontes',
            cpf: '44010762900',
            state: 'Rio Grande do Sul',
            value: '567' }
        ])