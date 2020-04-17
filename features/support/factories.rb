FactoryBot.define do
  factory :resident, class: User do
    email { "st120687@ait.asia" }
    password { "sundaypsm" }
    password_confirmation { "sundaypsm" }

  end
  factory :resident1, class: User do
    email { "admin@ait.asia" }
    password { "sundaypsm" }
    password_confirmation { "sundaypsm" }
    admin{true}
    role{"admin"}

  end
end
# FactoryBot.define do
#   factory :complaint,class: Complaint do
#     description {"please clean the garbage "}
#     block {"A"}
#     floor {211}
#     user_id {1}
#     type_of_property {"Shared"}
#   end
# end