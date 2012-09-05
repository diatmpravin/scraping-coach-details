task :default => [:test]

task :test do
  sh "echo 'Hello' >> 'tmp/hello.tmp'"
  ruby "test/unittest.rb"
end
