require 'yaml'

class SolucaoConfiguravel
  def self.solucao_reverse(string, file_path)
    @string = string
    hash = {}
    @data = YAML.load_file(file_path)
    @data.keys.each do |key|
      size = @data[key]["length"]
      align = @data[key]["align"]
      padding = @data[key]["padding"]

      hash[key.to_sym] = @string.slice!(0, size)
      if padding == "zeroes"
        hash[key.to_sym] = hash[key.to_sym].gsub(/0/, "")
      else

      end
    end
    hash
  end
end
