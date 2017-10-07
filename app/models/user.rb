class User < ApplicationRecord
  serialize :record
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :populate_blank_competency_record

  private

  def populate_blank_competency_record
    competency_record = "BASE RECORD"
    save
  end
end
