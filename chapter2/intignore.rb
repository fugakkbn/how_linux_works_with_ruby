#! /usr/bin/env ruby

Signal.trap(:INT, 'SIG_IGN')
while true; nil end
