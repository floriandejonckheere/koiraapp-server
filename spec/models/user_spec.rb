# frozen_string_literal: true

RSpec.describe User do
  subject(:user) { build(:user) }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
end
