feature 'Gerenciar FaleConosco' do

  before(:each) do
    @Cliente = create(:cliente, nome: "sebastiao")
  end

  let(:dados) do {
    cliente: "sebastiao",
    email: "contato.sebastiaoalves@gmail.com"
   }
  end

  scenario 'Incluir Faleconosco' do #, :js => true  do
    visit new_faleconosco_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Faleconosco' do #, :js => true  do
    faleconosco = FactoryGirl.create(:faleconosco, Cliente: @Cliente)
    visit edit_faleconosco_path(faleconosco)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Faleconosco' do #, :js => true  do
    faleconosco = FactoryGirl.create(:faleconosco, Cliente: @Cliente)
    visit faleconoscos_path
    click_link 'Destroy'
  end

  def preencher(dados)
    select dados[:cliente], from: "Nome"
    fill_in 'Email',  with: dados[:email]
  end

  def verificar(dados)
    page.should have_content "Cliente: #{dados[:cliente]}"
    page.should have_content "Email: #{dados[:email]}"
  end
end
