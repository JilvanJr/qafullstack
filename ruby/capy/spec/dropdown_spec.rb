

describe 'Caixa de opções', :dropdown do

    it 'Item especifico simples' do 
        visit '/dropdown'
        select('Loki', from: 'dropdown') #dropdown = id da caixa de seleção
        sleep 3
    end

    it 'Item especifico com o find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option #sample sorteia e seleciona alguma opção.
        sleep 3
    end
end