

describe 'Forms' do

    it 'login com sucesso' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        # apresenta que o '#flash' esta sendo exibido na tela, ou seja '=true'
        expect(find('#flash').visible?).to be true

        # include = 'contém'  
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        # have_content = mesma coisa que include
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'senha incorreta' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end
  
  
    it 'usuário não cadastrado' do
        visit '/login'
        fill_in 'userId', with: 'tony stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!' 
    end
end

# propriedade de cada exemplo que esta sendo executado
# puts e

# traz o nome do cenario
# puts e.description

# (/[^A-Za-z0-9 ]/, '') -> Expressão regular que substitui caracter especial por nada

# .tr(' ', '_') substitui espaços em branco por _