FactoryBot.define do
  factory :person do
    trait :one_friend do
      after :create do |person|
       circle = person.circles.first_or_create
       circle.people << FactoryBot.create(:person)
      end
    end

    trait :with_session do
      after :create do |person|
        user = FactoryBot.create(:user, person: person)
        # person.user = User.authenticate_by(email_address: user.email_address,
        #                                    password: user.password)

        # sort of like a stub
        Current.session = user.sessions.create!
        person.save!
      end
    end
  end
end
