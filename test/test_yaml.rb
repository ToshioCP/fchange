require 'minitest/autorun'
require "yaml"

class TestYaml < Minitest::Test
  def test_yaml
    a = YAML.load(File.read(__dir__ + "/../lib/fchange/change_def.yaml"))
    assert_instance_of Array, a
    a.each{|e| assert_instance_of Array, e}
    a.each do |from, to|
      case from
      when "①", "②", "③", "④", "⑤", "⑥", "⑦", "⑧", "⑨"
        assert_equal "①②③④⑤⑥⑦⑧⑨".index(from)+1, to.to_i
      else
        assert_equal "_", to
      end
    end
  end
end