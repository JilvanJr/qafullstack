

describe 'Tabelas', :tabs do

    before(:each) do
        visit 'tables'
    end

    it 'deve exibir o salario do stark' do 
        atores = all('table tbody tr')

        # vai percorrer por todos os 'trs' (contém 5) e gravar na variavel stark a tr que contém o texto
        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
        # retorna o texto da tr encontrada
        #puts stark.text
        expect(stark.text).to include '10.000.000'
    end

    it 'deve exibir o salario do vin diesel' do
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'deve exibir o filme velozes' do 
        diesel = find('table tbody tr', text: '@vindiesel')
    
        # $('table tbody tr:contains("@vindiesel") td') -> retorno todas as colunas do registro do Vin Diesel 
        # Coluna 3 posição 2 apresenta o filme 'Velozes e Furiosos' 
        # retorna um array de elementos, e array sempre começa na posição 0
        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'deve exibir o insta do Chris Evans' do 
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text

        expect(insta). to eql '@teamcevans'
    end

    it 'deve selecionar Chris Prat para remoção' do 
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg). to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'deve selecionar Chris Prat para edição' do 
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg). to eql 'Chris Pratt foi selecionado para edição!'
    end
end



# thead -> cabeçalho da tabela
# tbody -> corpo, onde tem todos os registros, cada 'tr' é um registro

# find busca um único elemento
# all busca todos elementos



