module Wizard
  module User
    STEPS = %w(step1 step2 step3).freeze

    class Base
      include ActiveModel::Model
      attr_accessor :user

      delegate *::User.attribute_names.map { |attr| [attr, "#{attr}="] }.flatten, to: :user

      def initialize(user_attributes)
        @user = ::User.new(user_attributes)
      end
    end

    class Step1 < Base
      validates :zip_code, zipcode: { country_code: :us }
    end

    class Step2 < Step1
      validates :gender, presence: true
      validates :birthday, presence: true
      validates :tobacco, presence: true
    end

    class Step3 < Step2
      validates :coverage, presence: true
      validates :term, presence: true
    end
  end
end