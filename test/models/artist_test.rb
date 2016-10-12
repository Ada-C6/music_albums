require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "An Artist must have a name" do
    red_hot_chilli_peppers = Artist.new
    assert_not red_hot_chilli_peppers.valid? "An Artist without a name is invalid."
    assert_not red_hot_chilli_peppers.save
    red_hot_chilli_peppers.name = "Kanye"
    assert red_hot_chilli_peppers.valid?  "Somehow Kanye is not a valid name."
  end

  test "Can retrieve the correct Number of Albums" do
    assert_equal artists(:beyonce).albums.size, 0
    assert_equal artists(:bonjovi).albums.size, 2
  end


  test "Bon Jovi has the correct Albums" do
    assert artists(:bonjovi).albums.include?(albums(:slippery_when_wet))
    assert_includes artists(:bonjovi).albums, albums(:slippery_when_wet)
    assert_includes artists(:bonjovi).albums, albums(:bounce)
  end



end
