class AvengersHeadQuarter
    attr_accessor :list
    
    def initialize
        self.list = []
    end

    def put(avenger) #método put adiciona no objeto :list
        self.list.push(avenger)
    end
end

# (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do 

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new #instanciando uma classe

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0
        expect(res).to be true 
    end

    it 'Thor deve ser o primeiro da lista' do
       hq = AvengersHeadQuarter.new 

       hq.put('Thor')
       hq.put('Hulk')
       hq.put('Spiderman')

       expect(hq.list).to start_with('Thor')
    end

    it 'Iroman deve ser o último da lista' do 
        hq = AvengersHeadQuarter.new 

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Iroman')
 
        expect(hq.list).to end_with('Iroman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Junior/)
    end
end