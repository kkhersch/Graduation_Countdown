FactoryBot.define do
  factory :student do 
    credits {0}
    days_until_graduation {750} 
    declared_major {"No defined major"}
    student_name {"Anonymus Student"}

    trait :freshman do
      credits {40}
      days_until_graduation {600}
      declared_major {"Computer Science"}
    end
    
    trait :sophomore do
      credits {80}
      days_until_graduation {450}
      declared_major {"Computer Science"}
    end
    
    trait :junior do
      credits {100}
      days_until_graduation {300}
      declared_major {"Computer Science"}
    end
    
    trait :senior do
      credits {150}
      days_until_graduation {150}
      declared_major {"Computer Science"}
    end
  end

end