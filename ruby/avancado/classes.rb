class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end
    
    def deposita_inicial
        puts "O saldo inicial é #{self.saldo}" 
    end

    def deposita(valor)    
        self.saldo += valor #self invoca o atributo.
        #puts 'Depositando a quantia de ' + valor.to_s+ ' reais.' #convertendo inteiro para string
        puts "Depositando a quantia de #{valor} reais na conta do #{self.nome}." #recomendado
        # método recebe o argumento (valor)
    end
end

c = Conta.new('Junior')
c.deposita_inicial

c.deposita(100.00) 
puts "O saldo é: #{c.saldo} reais."

c.deposita(10.00)
puts "O saldo agora é: #{c.saldo} reais."
