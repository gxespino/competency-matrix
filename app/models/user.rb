class User < ApplicationRecord
  serialize :competency_record
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :populate_base_competency_record

  BASE_COMPETENCY_RECORD = {
    'Javascript' => ['completed','','',''],
    'Ruby'       => ['working','','',''],
    'Java'       => ['','','',''],
    'React'      => ['','','',''],
    'DevOps'     => ['','','','']
  }.freeze

  private

  def populate_base_competency_record
    self.competency_record = BASE_COMPETENCY_RECORD
  end
end
