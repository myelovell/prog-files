class Bank
    def initialize()
        @accounts = {10 => [2000, "pswd"]} # account num: [balance, password]
        @access_allowed = false # whether or not user can access account
        @current_acc = 0

    end

    def register_account(account, password) # Access not needed to create a new account
      @accounts[account] = [0, password]
    end

    def display_accounts() # Just to show balance and passwords of all accounts, not to be in final version
        @accounts.each do |acc_num, values|
            puts "acc: #{acc_num}"
            puts "bal: #{values[0]} pswd: #{values[1]}\n"
        end
    end

    def display_balance(account) #
        if @access_allowed
            puts "acc: #{@current_acc}"
            puts "  bal: #{@accounts[@current_acc][0]}\n"
            return true
        else
            puts "Access denied"
            return false
        end
    end

    def open_bank(account, password)
        if password == @accounts[account][1]
            @access_allowed = true
            @current_acc = account
            puts "Access granted for account: #{account}"
            return true
        else
            puts "Access denied"
            return false
        end
    end
end

x = Bank.new
x.register_account(11, "pswrd")
x.open_bank(11, "pswrd")
x.display_balance(11)
