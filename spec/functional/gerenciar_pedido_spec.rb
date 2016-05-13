feature 'Gerenciar Pedido' do

  before(:each) do
    @Cliente = create(:cliente, nome: "sebastiao")
    @Produto = create(:produto, nome: "bcaa")
  end

  let(:dados) do {
    cliente: "sebastiao",
    produto: "bcaa",
    quantidade: "10"
   }
  end

  scenario 'Incluir Pedido' do #, :js => true  do
    visit new_pedido_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Pedido' do #, :js => true  do
    pedido = FactoryGirl.create(:pedido, Cliente: @Cliente, Produto: @Produto)
    visit edit_pedido_path(pedido)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Pedido' do #, :js => true  do
    pedido = FactoryGirl.create(:pedido, Cliente: @Cliente, Produto: @Produto)
    visit pedidos_path
    click_link 'Destroy'
  end

  def preencher(dados)
    select dados[:cliente], from: "Nome Cliente"
    select dados[:produto], from: "Nome"
    fill_in 'Quantidade',  with: dados[:quantidade]
  end

  def verificar(dados)
    page.should have_content "Cliente: #{dados[:cliente]}"
    page.should have_content "Produto: #{dados[:produto]}"
    page.should have_content "Quantidade: #{dados[:quantidade]}"
  end
end
