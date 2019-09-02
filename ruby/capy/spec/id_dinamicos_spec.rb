
describe 'ids dinamicos', :ids_dinamicos do 

    before(:each) do
        visit 'access'
    end

    it 'cadastro' do
        find('input[id$=UsernameInput]').set 'fernando' # '$' valor de id TERMINA com UsernameInput[expressão regular dentro de um css selector]
        find('input[id^=PasswordInput]').set '123456'  # '^' valor de id COMEÇA com PasswordInput
        find('a[id*=GetStartedButton]').click     # '*' valor de id CONTEM GetStartedButton

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
            sleep 3
    end
end


