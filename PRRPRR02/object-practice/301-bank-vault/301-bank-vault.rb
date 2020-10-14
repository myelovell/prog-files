#2020-09-16, acces and take out money, recrusive function with public and private objects
#def withdraw-amount(amount)
#    if accsess_allowed
#        open_safe
#        get_cash(amout)
#        close_safe
#    end

# Bank application. Withdraw, deposit, access money in bank. Recursive function to do the latter with public and private objects

# Bank class with accessing functions etc. Account class with password, settings functions etc.
class User
    def initialize()
        @cash = input
    end
    def operations()
        hputs "Welcome to Mone-Inda Bank"
        puts "Select you option:"
        puts help()

        while true
            input = gets.chomp.downcase
            case input
            when "help"
                help()
            when "register"
                register_account()
            when "open?"
                bank_open?()
            when "access"
                access_account()
            when "close"
                close_bank()
            when "withdraw"
                withdraw()
            when "deposit"
                deposit()
            when "bal"
                display_balance()
            when "cash"
                display_cash()
            when "clear"
                system("cls")
            when "accounts"
                $bank.display_accounts
            else
                puts "Invalid input, refer to help for commands"
            end
        end
    end

    def help()
      puts "help - Displays this message
    register - Register a new account in the bank
    open? - Says if the bank is open or closed
    access - Access an account with a password
    close - Close the bank
    withdraw - Withdraw money from the bank as cash*
    deposit - Put money in the bank*
    bal - Check your bank balance*
    cash - Check your cash balance

    clear - Clear the screen

    * Access to an account is required"
    end
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

    def account_excists?(account)
        if @accounts.include?(account)
            return true
        else
            return false
        end
    end

    def open_bank(account, password)
        if password = @accounts[account][1]
            @access_allowed = true
            @current_account = account
            puts "Acces granted for account: #{account}"
            return true
        else
            puts "Access denied"
            return false
        end
    end

    def enter_account_num(account)
        puts "Enter account number: you have #{@tries} tries left"
        account_num = gets.to_i
        if @accounts.include?(account_num)
            if @tries == 0
                # break
            end
            @tries -= 1
            enter_account_num()
        end
    end
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
