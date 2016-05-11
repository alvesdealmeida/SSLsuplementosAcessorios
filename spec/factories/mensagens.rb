FactoryGirl.define do
  factory :mensagem do
    Cliente nil
    email "MyString"
    assunto "MyString"
    conteudo "MyText"
  end
end
