

describe 'Upload', :upload do

#     before(:each) do
#         #Classe Dir | Método pwd
#         #é o método que retorna o caminho no qual eu tenho o diretorio de execução no meu projeto
#         visit 'upload'
#         @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
#         @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg' 
#     end

#     it 'Upload com arquivo texto' do
#         attach_file('file-upload', @arquivo)
#         click_button 'Upload'

#         div_aqruivo = find('#uploaded-file')
#         expect(div_aqruivo.text).to eql 'arquivo.txt'        
#     end

#     it 'Upload de imagem', :upload_imagem do 
#         attach_file('file-upload', @imagem)
#         click_button 'Upload'

#         img = find('#new-image')
#         expect(img[:src]).to include 'imagem.jpg'
#     end


#     after(:each) do
#         sleep 3
#     end
# end

#----------------------------------
    before(:each) do
        #Classe Dir | Método pwd
        #é o método que retorna o caminho no qual eu tenho o diretorio de execução no meu projeto
        visit 'login'
    end


    it 'login' do
        fill_in 'email', with: 'jilvanj@hotmail.com'
        fill_in 'password', with: 'Septuaginta10'
        click_button 'submit'
        expect(find('.dashboard-view__title.ng-binding.ng-scope').text).to include 'Jilvan Pereira de Sousa Junior!'
        visit 'https://admin.icasei.com.br/store/home'
        find('.menu-texto').click
        # find('.mp-product-edit.tb-products-line').
        find('.mp-product-edit.tb-products-line').click
        sleep 3
    end

    # end


    #     @imagem = Dir.pwd + '/spec/fixtures/lista/Abajur.jpg' 
    # end

    # it 'Upload de imagem', :upload_imagem do 
    #     attach_file('file-upload', @imagem)
    #     click_button 'Upload'

    #     img = find('#new-image')
    #     expect(img[:src]).to include 'imagem.jpg'
    # end


    # after(:each) do
    #     sleep 3
    # end
end