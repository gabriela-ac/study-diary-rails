class StudyItem < ApplicationRecord
  validates :title, :category, presence: { message: 'não pode ficar em branco' }

  def finalized?
    finalized_at.present?
  end
end
