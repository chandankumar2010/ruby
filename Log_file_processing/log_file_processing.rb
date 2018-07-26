usernames = Hash.new(0)

File.open("syslog.log").each do |line|
    if line.include?("CRON")
        username = /\((.+)\)$/.match(line)
        usernames[username[1]]+=1
    end
end
puts usernames 