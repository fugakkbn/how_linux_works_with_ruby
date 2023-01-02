#! /usr/bin/env ruby

fork do
  exec "/bin/echo", "fork と exec によって生成されました"
end

puts 'echo コマンドを生成しました'
