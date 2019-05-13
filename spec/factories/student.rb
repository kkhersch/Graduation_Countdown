FactoryBot.define do
  factory :student do    
    trait :freshman do
      credits {40}
    end
    
    trait :sophmore do
      credits {80}
    end
    
    trait :junior do
      credits {100}
    end
    
    trait :senior do
      credits {150}
    end
  end
end