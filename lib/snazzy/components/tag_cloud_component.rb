# frozen_string_literal: true

class TagCloudComponent < ViewComponent::Base
  def initialize(tag_labels:)
    @tag_labels = tag_labels
  end
end
