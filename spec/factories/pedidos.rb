FactoryGirl.define do
  factory :pedido do
    Cliente nil
    Produto nil
    quantidade "MyString"
    valorunitario "MyString"
    valor "MyString"
    total "MyString"
  end
end
