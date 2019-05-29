require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/vendor'

class VendorTest < Minitest::Test

  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

end
