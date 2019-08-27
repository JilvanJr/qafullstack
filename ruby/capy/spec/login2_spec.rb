

describe 'Login', :login2 do

    before(:each) do
        visit '/login2'
    end
    it 'com data de nascimento' do

        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'
        
        login_form = find('#login')

        case login_form.text
            # dentro de login_form tiver a palavra /dia/ eu faço...
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end

        sleep 3

        click_button 'Login'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end
end
