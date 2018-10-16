require 'fileutils'

class String
  def colorize(color_code)
    "#{color_code}#{self}\e[0m"
  end

  def red; self.colorize("\e[31m"); end
  def green; self.colorize("\e[32m"); end
  def blue; self.colorize("\e[34m"); end
end

def test_example(file)
  puts "TESTING".blue + " #{file}"
  line_num = 0
  buffer = ''
  pass = 0
  error = 0
  start_line = nil
  File.open(file).each_line do |line|
    line_num += 1
    content = line.chomp
    if content == '```swift'
      start_line = line_num
    elsif content == '```' && buffer != ''
      test_path = TEST_FOLDER + '/' + file.split('/').last.chomp('.md') + "-line-#{start_line}.swift"
      File.write(test_path, buffer)
      if system 'swiftc', test_path, '-o', test_path.chomp('.swift')
        puts "PASSED".green + ": #{file} line #{start_line}"
        pass += 1
      else
        puts "FAILED".red + ": #{file} line #{start_line}"
        error += 1
      end
      start_line = nil
    elsif start_line != nil
      buffer << line
    end
  end
  [pass, error]
end

TEST_FOLDER = 'testfiles'
FileUtils.rm_rf(TEST_FOLDER)
FileUtils.mkdir(TEST_FOLDER)

passed = 0
failed = 0
Dir['examples/*.md'].each do |file|
  pass, error = test_example(file)
  passed += pass
  failed += error
end

puts "Finished: #{passed.to_s.green} passed, #{failed.to_s.red} failed."

exit failed > 0 ? 1 : 0