require "test_helper"

class PdcmdTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PDCmd::VERSION
  end
  
  def test_that_it_can_load_notify
    h = {
      sk: 'awyiss'
    }
    yay = PDCmd::Notify.new(h)
    assert_instance_of PDCmd::Notify,yay
  end

end
