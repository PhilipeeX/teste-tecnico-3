def solucao(arr)
  arr.map do |hash|
    hash.values.map { |value| value.to_s[0,11].ljust(11) }.join
  end.join("\n")
end