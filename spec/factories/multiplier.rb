FactoryBot.define do
  factory :multiplier do
    trait :steam do
      name {"Games Released on Steam"}
      multiplier_value {21}
    end
    
    trait :rupie do
      name {"Rupies"}
      multiplier_value {5.7}
    end
    
    trait :default do
      name {"Games Released on Steam"}
      multiplier_value {21}
    end
  end
end