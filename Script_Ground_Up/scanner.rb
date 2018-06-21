require "ipaddr"
require "net/ping"

#here map method is being used, map method applies operations to each item in the list
def calculcate_network_range(ip,mask)
    address = "#{ip}/#{mask}"
    ip_range = IPAddr.new(address).to_range.map { |ip_obj| ip_obj.to_s }
end

#same method using each operator
=begin
    def calculcate_network_range(ip,mask)
        address="#{ip}/#{mask}"
        ip_range=[]
        IPAddr.new(address).each do|ip_obj|
        ip_range.push(ip_obj.to_s)
        end
    return ip_range
=end

def scan_range(ip_range)
    active_ips = []
    ip_range.each do |ip_address|
        if Net::Ping::External.new(ip_address).ping?
            active_ips.push(ip_address)
        end
    end
    return active_ips
end

#above method can be refactored to following 
#the select method return the list of all items for those whose boolean returned to be true
=begin
def scan_range(ip_range)
    active_ips = ip_range.select { |ip| Net::Ping::External.new(ip).ping?}
end
=end

def write_to_file(active_ips)
    File.open("active_ips.txt","w") do |file|
        active_ips.each do |ip_address|
            file.puts ip_address
        end
    end
end

range = calculcate_network_range("192.168.31.1", "255.255.255.0")
active_ips = scan_range(range)
write_to_file(active_ips)