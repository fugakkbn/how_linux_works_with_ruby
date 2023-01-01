#! /usr/bin/env ruby

child_pid = fork do
  puts "子プロセス: pid=#{Process.pid}, 親プロセスのpid=#{Process.ppid}"
  exit 0
end

puts "親プロセス: pid=#{Process.pid}, 子プロセスのpid=#{child_pid}"

exit 1
