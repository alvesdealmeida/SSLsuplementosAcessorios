feature 'Gerenciar Cliente' do

  scenario 'Incluir Cliente' do 
    visit new_cliente_path
    preencher_e_verificar_cliente
  end

  scenario 'Alterar Cliente' do 
    cliente = FactoryGirl.create(:cliente)
    visit edit_cliente_path(cliente)
    preencher_e_verificar_cliente

  end

   scenario 'Excluir cliente' do 
    cliente = FactoryGirl.create(:cliente)
    visit clientes_path
    click_link('Destroy')

  end

  def preencher_e_verificar_cliente

    fill_in 'Nome Cliente',     :with => "mario"
    fill_in 'Endereço', :with => "rua peru ,20"
    fill_in 'Telefone',     :with => "22997195721"
    fill_in 'Email', :with => "contato.sebastiaoalves@gmail.com"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: mario'
    expect(page).to have_content 'Endereco: rua peru ,20'
    expect(page).to have_content 'Telefone: 22997195721'
    expect(page).to have_content 'Email: contato.sebastiaoalves@gmail.com'
  end
end
