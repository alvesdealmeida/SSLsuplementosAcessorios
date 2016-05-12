feature 'Gerenciar Produto' do

  scenario 'Incluir Produto' do 
    visit new_produto_path
    preencher_e_verificar_produto
  end

  scenario 'Alterar Produto' do 
    produto = FactoryGirl.create(:produto)
    visit edit_produto_path(produto)
    preencher_e_verificar_produto

  end

   scenario 'Excluir Produto' do 
    produto = FactoryGirl.create(:produto)
    visit produtos_path
    click_link('Destroy')

  end

  def preencher_e_verificar_produto

    fill_in 'Nome',     :with => "BCAA"
    fill_in 'Categoria',  :with => "nacional"
    fill_in 'Descricao',     :with => "suplementos"
    fill_in 'Valor', :with => "200,00"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: BCAA'
    expect(page).to have_content 'Categoria: nacional'
    expect(page).to have_content 'Descricao: suplementos'
    expect(page).to have_content 'Valor: 200,00'
  end
end
