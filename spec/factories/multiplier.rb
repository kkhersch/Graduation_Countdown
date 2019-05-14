FactoryBot.define do
  factory :multiplier do

    trait :steam do
      name {"Games Released on Steam"}
      multiplier_value {21}
    end

    trait :hotdog do
      name {"Hot Dogs Eaten"}
      multiplier_value {7.2}
    end

    trait :rupie do
      name {"Rupies Gathered"}
      multiplier_value {5.7}
    end

    trait :nonametest do
      name {""}
      multiplier_value {12}
    end

    trait :default do
      name {"No Defined Name"}
      multiplier_value {0}
    end
