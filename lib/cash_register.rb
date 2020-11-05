
class CashRegister
    attr_accessor :total, :discount, :cart, :price, :quantity, :title, :last_amount, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount = discount # if no vari defaults to 0
        @cart = []
        @price = price
        @quantity = quantity
        @title = title
        
    end

    def add_item(title, price, quantity=1) # if optional, give default val
        count = 0
        self.total += price * quantity # self.total = self.total + price * quantity
        while count < quantity 
            @cart << title 
            count += 1
        end ## instead of while loop and count, do quantity.times { @total << item}
        self.last_transaction = price * quantity
    end
    
    def apply_discount
        if discount > 0 # if there is a discount
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            # make the discount amt a float and subtract from 100, then divide the num by 100 and multiply by total 
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply." 
        end
    end

    def items
        @cart 
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end