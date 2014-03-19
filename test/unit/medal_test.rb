require File.expand_path(File.dirname(__FILE__)+ '/../test_helper')

class MedalTest < ActiveSupport::TestCase
  fixtures :medals
   
  #test will fail because db created with a :code column.
  def test_name
    medal = Medal.new(
      :name => "Country name",
      :gold => '50',
      :silver => '30',
      :bronze => '10')
    assert_equal "Country name", medal.name
  end
  
  def test_fixture_load
    medal = Medal.new(
      :name => medals(:one).name,
      :gold => medals(:one).gold,
      :silver => medals(:one).silver,
      :bronze => medals(:one).bronze)
    assert_equal "MyString", medal.name
  end
  
end