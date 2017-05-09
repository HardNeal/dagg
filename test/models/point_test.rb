require 'test_helper'

class PointTest < ActiveSupport::TestCase
  def setup
    @tracker = Tracker.new(imei_code: '990000862471853', phone: '0555555555')
    @point = Point.new(longtitude: 45, latitude: 45, tracker: @tracker, point_time: '2017.04.10')
  end

  test 'should be valid' do
    assert @point.valid?
  end

  test 'longtitude should be present' do
    @point.longtitude = '      '
    assert_not @point.valid?
  end

  test 'longtitude should be decimal datatype' do
    invalid_longtitudes = ['-200', 'abc', true]
    invalid_longtitudes.each do |invalid_longtitude|
      @point.longtitude = invalid_longtitude
      assert_not @point.valid?, "#{invalid_longtitude.inspect} should be decimal datatype"
    end
  end

  test 'longtitude should be in range between [-180; 180]' do
    @point.longtitude = 181
    assert_not @point.valid?
    @point.longtitude = -181
    assert_not @point.valid?
  end

  test 'longtitude validation should accept valid longtitude values' do
    valid_longtitudes = [-180, -150, -120, -90, -75, -60, -45, -30, -15, 0, 45, 60, 90, 120, 150]
    valid_longtitudes.each do |valid_longtitude|
      @point.longtitude = valid_longtitude
      assert @point.valid?, "#{valid_longtitude.inspect} should be valid"
    end
  end

  test 'longtitude validation should reject invalid longtitude values' do
    invalid_longtitudes = [-200, -250, -350, 400, 500]
    invalid_longtitudes.each do |invalid_longtitude|
      @point.longtitude = invalid_longtitude
      assert_not @point.valid?, "#{invalid_longtitude.inspect} should be invalid"
    end
  end

  test 'latitude should be present' do
    @point.latitude = '      '
    assert_not @point.valid?
  end

  test 'latitude should be decimal datatype' do
    invalid_longtitudes = ['-200', 'abc', true]
    invalid_longtitudes.each do |invalid_longtitude|
      @point.longtitude = invalid_longtitude
      assert_not @point.valid?, "#{invalid_longtitude.inspect} should be decimal datatype"
    end
  end

  test 'latitude should be in range between [-90; 90]' do
    @point.latitude = 91
    assert_not @point.valid?
    @point.latitude = -91
    assert_not @point.valid?
  end

  test 'latitude validation should accept valid latitude values' do
    valid_latitudes = [-90, -75, -60, -45, -30, -15, 0, 45, 60]
    valid_latitudes.each do |valid_latitude|
      @point.latitude = valid_latitude
      assert @point.valid?, "#{valid_latitude.inspect} should be valid"
    end
  end

  test 'latitude validation should reject invalid latitude values' do
    invalid_latitudes = [-100, -200, -250, -350, 400, 500]
    invalid_latitudes.each do |invalid_latitude|
      @point.latitude = invalid_latitude
      assert_not @point.valid?, "#{invalid_latitude.inspect} should be invalid"
    end
  end
end
