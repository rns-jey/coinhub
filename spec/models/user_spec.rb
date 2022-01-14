require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When user is signing in, check if user' do
    it 'is not allowed without email' do
      user = described_class.new(email: nil, password: 'password')

      expect(user).not_to be_valid
    end

    it 'is not allowed without password' do
      user = described_class.new(email: 'sample@email.com', password: nil)

      expect(user).not_to be_valid
    end
  end
end