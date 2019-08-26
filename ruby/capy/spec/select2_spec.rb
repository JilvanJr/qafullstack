

describe 'Select2', :select2 do

    describe('single', :single) do
        before(:each) do
            visit '/apps/select2/single.html'
        end

        it 'Seleciona ator por nome' do 

            find('.select2-selection--single').click
            sleep 1

            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 3
        end

        it 'busca e clica no autor' do
            find('.select2-selection--single').click
            sleep 1
            find('.select2-search__field').set 'Chris Rock'
            sleep 2
            find('.select2-results__option').click
            sleep 2             
        end
    end

    describe('multiple', :mult) do
        before(:each) do
            visit '/apps/select2/multi.html'
        end

        def selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        it 'seleciona atores' do 

            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James', 'Chris Rock']
            
            atores.each do |a|
                selecione(a)
            end
            # Tem a opção acima, ou abaixo para utilizar.

            # selecione('Jim Carrey')
            # selecione('Owen Wilson')
            sleep 4
        end
    end 
end