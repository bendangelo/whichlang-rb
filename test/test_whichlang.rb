# frozen_string_literal: true

require_relative "helper"

class TestWhichlang < Test::Unit::TestCase
  def test_detect
    text = "Jen la trinkejo fermitis, ni iras tra mallumo kaj pluvo."

    assert_equal "spa", Whichlang.detect(text)
  end

  def test_detect_blank_spaces
    assert_equal Whichlang.detect(""), nil
    assert_equal Whichlang.detect(" "), nil
    assert_equal Whichlang.detect("\n"), nil
  end

  def test_detect_nil
    assert_equal Whichlang.detect(nil), nil
  end
end
