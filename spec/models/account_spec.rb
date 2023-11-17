require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'should require entries for username' do
  example = Account.create(password: 'password' , email: 'alexn@gmail.com')
  expect(example.errors[:username]).to_not be_empty
  end

    it 'should require entries for password' do
    example = Account.create(username: 'Alex' , email: 'alexn@gmail.com')
    expect(example.errors[:password]).to_not be_empty
    end

    it 'should require entries for email' do
      example = Account.create(username: 'Alex' , password: 'password')
      expect(example.errors[:email]).to_not be_empty
      end

    it 'username should have at least 5 characters' do
      example = Account.create(username: 'Alex', password: 'password', email: 'alexn@gmail.com')
      expect(example.errors[:username]).to_not be_empty
    end

    it 'each username should be unique' do
      Account.create(username: 'Alexis', password: 'password', email: 'alexn@gmail.com')
      dupe = Account.create(username: 'Alexis', password: 'password', email:'alexn@gmail.com')
      expect(dupe.errors[:username]).to_not be_empty
    end

    it 'each password should be at least 6 characters long' do
      example = Account.create(username: 'Alexis', password: 'pass',
      email:'alexn@gmail.com')
      expect(example.errors[:password]).to_not be_empty
    end
    
    it 'each password should be unique' do
      Account.create(username: 'Alexis', password: 'password', email: 'alexn@gmail.com')
      dupe = Account.create(username: 'Alexis', password: 'password', email: 'alexn@gmail.com')
      expect(dupe.errors[:password]).to_not be_empty
    end
end
