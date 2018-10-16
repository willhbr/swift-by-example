require 'fileutils'

class String
  def colorize(color_code)
    "#{color_code}#{self}\e[0m"
  end

  def red; self.colorize("\e[31m"); end
  def green; self.colorize("\e[32m"); end
end

TEST_FOLDER = 'testfiles'
FileUtils.rm_rf(TEST_FOLDER)
FileUtils.mkdir(TEST_FOLDER)

Dir['examples/*.md'].each do |file|
  line_num = 0
  buffer = ''
  capturing = false
  File.open(file).each_line do |line|
    line_num += 1
    content = line.chomp
    if content == '```swift'
      capturing = true
    elsif content == '```' && buffer != ''
      capturing = false
      test_path = TEST_FOLDER + '/' + file.split('/').last.chomp('.md') + "-line-#{line_num}.swift"
      File.write(test_path, buffer)
    elsif capturing
      buffer << line
    end
  end
end

passed = 0
failed = 0
Dir['testfiles/*.swift'].each do |file|
  if system 'swiftc', file, '-o', file.chomp('.swift')
    puts "PASSED".green + ": #{file}"
    passed += 1
  else
    puts "FAILED".red + ": #{file}"
    failed += 1
  end
end

puts "Finished: #{passed} passed, #{failed} failed."

exit failed > 0 ? 1 : 0