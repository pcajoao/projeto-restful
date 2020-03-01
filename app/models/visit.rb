class Visit < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  has_many :answer

  validates :data, presence: true
  validates :checkin_at, presence: true
  validates :checkout_at, presence: true
  validates :created_at, :updated_at, presence: false
  validate :compara_datas
  validate :compara_checkin

  private

  def compara_datas 
    if (data.to_s <= created_at.to_s || data.to_s <= updated_at.to_s)
      errors.add(:data, " deve ser maior que data de criação e/ou atualização do registro.")
      end
    end
  
  def compara_checkin
    if (checkin_at >= DateTime.now)
      errors.add(:checkin_at, "Check-in deve ser menor que o horário atual.")
    elsif (checkout_at >= DateTime.now)
      errors.add(:checkout_at, "Check-out deve ser menor que o horário atual.")
      end
    end
    
  end