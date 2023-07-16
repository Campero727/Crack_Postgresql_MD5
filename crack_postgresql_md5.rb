#!/usr/bin/env ruby

require 'digest/md5'

class String
  def red; colorize(self, "\e[1m\e[31m"); end
  def green; colorize(self, "\e[1m\e[32m"); end
  def dark_green; colorize(self, "\e[32m"); end
  def yellow; colorize(self, "\e[1m\e[33m"); end
  def blue; colorize(self, "\e[1m\e[34m"); end
  def dark_blue; colorize(self, "\e[34m"); end
  def purple; colorize(self, "\e[35m"); end
  def dark_purple; colorize(self, "\e[1;35m"); end
  def cyan; colorize(self, "\e[1;36m"); end
  def dark_cyan; colorize(self, "\e[36m"); end
  def pure; colorize(self, "\e[0m\e[28m"); end
  def bold; colorize(self, "\e[1m"); end
  def colorize(text, color_code) "#{color_code}#{text}\e[0m" end
end

passList=ARGV[0]
userList=ARGV[1]
hash=ARGV[2]

def cracking(passlist,userlist,hash)
  begin
    pass_file=File.open(passlist,'r')
  rescue Errno::ENOENT 
    puts "[!] Password file not found".red
    exit 0
  end

  begin
    user_file=File.open(userlist,'r')
  rescue Errno::ENOENT
    puts "[!] Users file not found".red 
    exit 0
  end

  passw=pass_file.readlines.map(&:chomp)
  users=user_file.readlines.map(&:chomp)

  passw.each do |pass|
    users.each do |user|
      hash_tmp='md5'+Digest::MD5.hexdigest(pass+user)
      if hash_tmp==hash 
        puts "User: ".dark_blue+"#{user} ".dark_purple+"Password: ".dark_blue+"#{pass} ".dark_purple+"Hash: ".dark_blue+"#{hash}".dark_purple
        break
      end
    end
  end

  pass_file.close
  user_file.close 

end

if ARGV.size==3
  cracking(passList,userList,hash) 
else 
  puts "[!]".red+"Use ruby ".blue+"#{File.basename(__FILE__)} ".dark_purple+"<passlist> ".dark_cyan+"<userlist> ".dark_green+"<password hash>".red
end
