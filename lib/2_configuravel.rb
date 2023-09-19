# frozen_string_literal: true
require 'yaml'

class SolucaoConfiguravel
  def self.solucao(arr, file_path)
    @dados = YAML.load_file(file_path)
    arr.map do |hash|
      @dados.keys.map do |key|
        size = @dados[key]["length"]
        align = @dados[key]["align"]
        padding = @dados[key]["padding"]

        if size >= hash[key.to_sym].size

          if align == 'left' && padding == 'spaces'
            hash[key.to_sym].ljust(size, " ")
          elsif align == 'left' && padding == 'zeroes'
            hash[key.to_sym].ljust(size, "0")
          elsif align == 'right' && padding == 'spaces'
            hash[key.to_sym].rjust(size, " ")
          elsif align == 'right' && padding == 'zeroes'
            hash[key.to_sym].rjust(size, "0")
          end
        else
          hash[key.to_sym].slice(0, size)
        end
      end.join
    end.join("\n")
  end
end
