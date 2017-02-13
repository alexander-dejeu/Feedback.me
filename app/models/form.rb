class Form < ApplicationRecord
  has_and_belongs_to_many :classrooms

  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true, :reject_if => lambda { |a| a[:label].blank? }

  has_many :responses, dependent: :destroy

  validates :name, :assesment_type, :presence => true

  # attr_writer :current_step
  #
  # validates_presence_of :five_tier, :if => lambda { |o| o.current_step == "tier_select" }
  # validates_presence_of :name, :if => lambda { |o| o.current_step == "form_fields" }
  #
  # def current_step
  #   @current_step || steps.first
  # end
  #
  # def steps
  #   %w[tier_select form_fields]
  # end
  #
  # def next_step
  #   self.current_step = steps[steps.index(current_step)+1]
  # end
  #
  # def previous_step
  #   self.current_step = steps[steps.index(current_step)-1]
  # end
  #
  # def first_step?
  #   current_step == steps.first
  # end
  #
  # def last_step?
  #   current_step == steps.last
  # end
  #
  # def all_valid?
  #   steps.all? do |step|
  #     self.current_step = step
  #     valid?
  #   end
  # end
end
