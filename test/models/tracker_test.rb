require 'test_helper'

class TrackerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @tracker = Tracker.new(imei_code: '990000862471853', phone: '0555555555')
  end

  test 'should be valid' do
    assert @tracker.valid?
  end

  test 'imei_code should be present' do
    @tracker.imei_code = '      '
    assert_not @tracker.valid?
  end

  test 'imei_code should have length of 15-16 symbols' do
    @tracker.imei_code = '1' * 17
    assert_not @tracker.valid?
    @tracker.imei_code = '1' * 14
    assert_not @tracker.valid?
  end

  test 'imei_code should be unique' do
    duplicate_tracker = @tracker.dup
    @tracker.save
    assert_not duplicate_tracker.valid?
  end

  test 'imei_code validation should accept valid imei_code-s' do
    valid_imeis = %w(990000862471853 352099001761481 490154203237518)
    valid_imeis.each do |valid_imei|
      @tracker.imei_code = valid_imei
      assert @tracker.valid?, "#{valid_imei.inspect} should be valid"
    end
  end

  test 'imei_code validation should reject invalid imei_code-s' do
    invalid_imeis = %w(11111abcdeabcde abcde1234512345 abcde1357913579)
    invalid_imeis.each do |invalid_imei|
      @tracker.imei_code = invalid_imei
      assert_not @tracker.valid?, "#{invalid_imei.inspect} should be invalid"
    end
  end

  test 'phone should be present' do
    @tracker.phone = '     '
    assert_not @tracker.valid?
  end
end
