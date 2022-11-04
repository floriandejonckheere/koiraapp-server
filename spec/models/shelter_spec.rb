# frozen_string_literal: true

RSpec.describe Shelter do
  subject(:shelter) { build(:shelter) }

  it { is_expected.to validate_presence_of :name }
end
