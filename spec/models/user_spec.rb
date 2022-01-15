require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When signing in, user' do
    it 'is not allowed without email' do
      user = described_class.new(email: nil, firstname: 'Jane', lastname: 'Doe', password: 'password')

      expect(user).not_to be_valid
    end


    it 'is not allowed without password' do
      user = described_class.new(email: 'john.doe@coinhub.com', firstname: 'Jane', lastname: 'Doe', password: nil)

      expect(user).not_to be_valid
    end
  end
end
