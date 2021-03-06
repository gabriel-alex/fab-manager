# frozen_string_literal: true

class ReservationSlotSubscriptionValidator < ActiveModel::Validator
  def validate(record)
    record.slots.each do |s|
      unless s.availability.plan_ids.empty?
        if record.user.subscribed_plan && s.availability.plan_ids.include?(record.user.subscribed_plan.id)
        elsif s.availability.plan_ids.include?(record.plan_id)
        else
          record.errors[:slots] << 'slot is restrict for subscriptions'
        end
      end
    end
  end
end
