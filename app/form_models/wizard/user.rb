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
      HUMANIZED_ATTRIBUTES = {
        :fname => "First name",
        :lname => "Last name"
      }
      def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
        HUMANIZED_ATTRIBUTES[attr.to_sym] || super
      end

      #validates_inclusion_of :birthday, :in=>Date.new(1900)..Time.now.years_ago(18).to_date, :message=>'You must be 18 years or older'
      validates :birthday, presence: true
      validate :validate_age
      def validate_age
        if birthday.present? && birthday.to_date > 18.years.ago.to_date
          errors.add(:birthday, 'You should be over 18 years old.')
        elsif birthday.present? && birthday.to_date < 99.years.ago.to_date
          errors.add(:birthday, 'Please enter a valid age.')
        end
      end
      validates :gender, presence: true
      validates :tobacco, presence: true
      validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
      validates :fname, presence: true
      validates :lname, presence: true
      validates :phone, format: { with: /\d{3}\d{3}\d{4}/, message: "incorrect format, use format ##########" }

    end

    class Step3 < Step2
      validates :coverage, presence: true
      validates :term, presence: true
    end
  end
end
