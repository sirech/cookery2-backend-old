FactoryGirl.define do
  factory :quantity do
    ingredient { FactoryGirl.create(:ingredient) }
    amount { Random.rand(100) }
    unit { Quantity.units.sample }
  end
end
