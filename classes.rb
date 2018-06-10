class Customer
    @@no_of_customers=0;
    def initialize(id,name,addr)
        @cust_id=id;
        @cust_name=name;
        @cust_addr=addr;
        @@no_of_customers += 1
    end

    def print
        puts "Customer id:#{@cust_id}\nCustomer name:#{@cust_name}\nCustomer address:#{@cust_addr}
        "
    end

    def total_customer
        puts "Total no of customers:#{@@no_of_customers}"
    end
end

cus1 = Customer.new(1,"Customer 1","Address for customer1")
cus2 = Customer.new(2,"Customer 2","Address for customer2")

cus1.print
cus2.print
