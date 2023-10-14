# Filename changer
#
# For example blank character cause some trouble if it is used in a filename.
# Other characters like ① also isn't accepted in some file managers.
# One way is to change such characters to another safe ones.
# For example,
#   blank => _ (underscore)
#   ① => 1

require 'yaml'

def filename_change_recursively(file)
  # Definition
  @change_def = YAML.load(File.read(__dir__ + "/change_def.yaml")) unless @change_def
  unless File.exist?(file)
    $stderr.print "#{file} doesn't exist.\n"
    return
  end

  to = from = file
  @change_def.each do |old, new|
    # to = to.gsub(old, new) is another way, but it sometimes behaves strangely.
    # If the string new includes '\&', '\0', '\1', ..., they are replaced by the matched strings.
    # The following uses a block, which returns the exact string new.
    to = to.gsub(old){|matched| new}
  end
  begin
    File.rename(from, to) if from != to
  rescue StandardError =>evar
    $stderr.print "#{evar.message}\n"
    $stderr.print "Don't copy the file #{file}.\n"
  end
  file = to

  if File.directory?(file)
    dir = file # change the variable name to clear that the object is directory.
    begin
      files = Dir.children(dir)
    rescue StandardError => evar
      $stderr.print "#{evar.message}\n"
      $stderr.print "Don't copy the directory #{dir} and under.\n"
      return
    end
    Dir.chdir(dir)
    files.each do |f|
      filename_change_recursively(f)
    end
    Dir.chdir("..")
  end
end

