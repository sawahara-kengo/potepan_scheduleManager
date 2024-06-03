class Schedule < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :startDay, presence: true
    validates :endDay, presence: true
    validates :memo, length: {maximum: 500}

    validate :days_contradiction
        def days_contradiction
            if startDay.present? && endDay.present? && endDay < startDay
                errors.add(:endDay, "は開始日よりも前に設定できません")
            end
        end
end
