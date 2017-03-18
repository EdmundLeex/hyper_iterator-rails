require 'test_helper'

class HyperIteratorRailsTest < ActiveSupport::TestCase
  setup do
    User.create(email: 'foobar1@example.com')
    User.create(email: 'foobar2@example.com')
    User.create(email: 'foobar3@example.com')
    User.create(email: 'foobar4@example.com')
    User.create(email: 'foobar5@example.com')
    User.create(email: 'foobar6@example.com')
    User.create(email: 'foobar7@example.com')
    User.create(email: 'foobar8@example.com')
  end

  teardown do
    User.destroy_all
  end

  test 'ActiveRecord::Result responds to each! method' do
    assert ActiveRecord::Result.instance_methods.include?(:each!)
  end

  test 'each! iterates through the result like each' do
    users = ActiveRecord::Base.connection.select_all('select * from users')
    users_each = []
    users_each_bang = []
    users.each { |user| users_each << user }
    users.each! { |user| users_each_bang << user }

    assert users_each == users_each_bang
  end

  test 'ActiveRecord collection responds to each! method' do
    users = User.where(email: 'foobar1@example.com')
    assert users.respond_to?(:each!)
  end

  test 'each! iterates through the collection like each' do
    users = User.all
    users_each = []
    users_each_bang = []
    users.each { |user| users_each << user }
    users.each! { |user| users_each_bang << user }

    assert users_each == users_each_bang
  end
end
