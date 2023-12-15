class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def age
    return nil if birthdate.nil?

    today = Date.current
    age = today.year - birthdate.year - ((today.month > birthdate.month || (today.month == birthdate.month && today.day >= birthdate.day)) ? 0 : 1)
  end
end