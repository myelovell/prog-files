#2020-09-16, acces and take out money, recrusive function with public and private objects
puts "Welcome to Mone-Inda Bank"
puts "Select you option:\n
Register Accoun: 'Reg'
Open Account : 'Open'
"
$option = gets.chomp
while $option != "Reg" || "Open"
    puts "To register a new account: 'Reg'"
    puts "To open an excisting account: 'Open'"
    $option = gets.chomp
    if $option == "Reg"
        register_account()
    elsif $option == "Open"
        open_bank()
end

class Bank
    def initialize()
        @accounts = {10:[2000, "p455w0rd"]}
        @access_allowed = false
        @current_account = 0 #will output key 10
        # @tries = 3
    end

    def register_account(account, password)
        @accounts[account] = [0, password]
    end

    #Just to show balance and passwords of all accounts, will not be in final version
    # def display_accounts()
    #     @accounts.each do |account_num, values|
    #         puts "account: #{account_num}"
    #         puts "balance: #{values[0]} password: #{values[1]}\n"
    #     end
    # end

    def open_bank(account, password)
        if password = @accounts[account][1]
            @access_allowed = true
            @current_accont = account
            puts "Acces granted for account: #{account}"
            return true
        else
            puts "Access denied"
            return false
        end
    end

    # def enter_account_num()
    #     puts "Enter account number: you have #{@tries} tries left"
    #     account_num = gets.to_i
    #     if account_num != @account_num
    #         if @tries == 0
    #             break
    #         end
    #         @tries -= 1
    #         enter_account_num()
    #     end
    # end
    # puts "Account number: #{@account_num}"
    #
    # def enter_password()
    #     puts "Enter password: you have #{@tries} tries left"
    #     pasword = gets.chomp
    #     if password != @password
    #         if @tries == 0
    #             break
    #         end
    #         @tries -= 1
    #         enter_password()
    #     end
    # end
    def display_balance(account)
        if @access_allowed
            puts "account: #{@corrent_account}"
            puts "balance: #{@accounts[@current_account][0]}\n"
            return true
        else
            puts "Access denied"
            return false
        end
    end
end

#def withdraw-amount(amount)
#    if accsess_allowed
#        open_safe
#        get_cash(amout)
#        close_safe
#    end

# $global_variable = 10 can be defined outside of functions, normal_variables cannot
x = Bank.new
x.register_account(11, "pswrd")
x.open_bank(11, "pswrd")
x.display_balance(11)
