module Mutations
  class CreateUser < BaseMutation
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :mobile, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true
    
    type Types::UserType

    def resolve(first_name:, last_name:, mobile:, email:, password:, password_confirmation:)
      User.create!(
        first_name: first_name,
        last_name: last_name,
        mobile: mobile,
        email: email,
        password: password,
        password_confirmation: password_confirmation
      )
    end

  end
end