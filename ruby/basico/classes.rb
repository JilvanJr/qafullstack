# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo é objetos

# Classe possui atributos e metodos
# Caracteristicas e ações

# Carro 
# Atributos (Nome, Marca, Modelo, cor, quantidade de portas, etc...)
# Ações/Métodos (Ligar, businar, parar, etc...)

class Carro 
    attr_accessor :nome #atributos

    #metodos 
    def ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end 
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar
