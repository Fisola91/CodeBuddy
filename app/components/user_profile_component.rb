# frozen_string_literal: true

class UserProfileComponent < ViewComponent::Base
  def initialize(current_user:)
    @current_user = current_user
  end

  def username
    current_user.username
  end

  def first_name
    current_user.first_name
  end

  def last_name
    current_user.last_name
  end

  # def topic_interest
  #   JSON.parse(current_user.topic_interest)
  # end

  private

  attr_reader :current_user

end
