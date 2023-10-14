require 'minitest/autorun'
require 'fileutils'
require 'yaml'
require_relative '../lib/fchange/fchange.rb'

include FileUtils

class TestFChange < Minitest::Test
  def setup
    @tempdir = __dir__ + "/temp"
    mkdir @tempdir
    touch @tempdir+"/sample file.txt"
    touch @tempdir+"/連絡①.txt"
    touch @tempdir+"/②報告.doc"
    mkdir @tempdir+"/temp?"
    touch @tempdir+"/temp?/例題⑨ file.txt"
  end
  def teardown
    remove_entry_secure @tempdir
  end

  def test_fchange
    filename_change_recursively(@tempdir)
    assert File.exist?(@tempdir+"/sample_file.txt")
    assert File.exist?(@tempdir+"/連絡1.txt")
    assert File.exist?(@tempdir+"/2報告.doc")
    assert File.exist?(@tempdir+"/temp_/例題9_file.txt")
  end
end
