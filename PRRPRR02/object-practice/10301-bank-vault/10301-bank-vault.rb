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
        @cash = 4000 #input cash?
        @tries = 3
    end
    attr_reader :tries

    def register_account()
        puts "Enter account number:"
        account = gets.to_i
        while account <= 1
            puts "Enter account number highet than 1:"
            account = gets.to_i
        end

        puts "Enter password:"
        password = gets.chomp
        while password <= 5
            puts "Enter password larger than 5 letters and/or umbers:"
            password = gets.chomp
        end
        if $bank.register_account(account, password)
            puts "Account created successfully!\n"
            puts "Account Number: #{@current_account}"
            puts "Account Password: #{@current_account[1]}"
        else
            puts "Account creation error"
            register_account()
        end
    end

    def bank_open?()
        if $bank.bank_open?()
            puts "Account Number: #{$bank.current_account} is currently accessed"
        else
            puts "The bank is currently closed"
        end
    end

    def access_account()
        close_bank()
        tries = 3
        puts "Enter account number you want to access:"
        account = gets.to_i
        while account <= 1
            puts "Enter account number highet than 1:"
            account = gets.to_i
        end
        account == "cancel" || account == "Cancel" ? exit : nil # Ternary Operator: if account == "cancel" or "Cancel", exit the function, if not dont do anything
        # def enter_account_num(account)
        #     if @accounts.include?(account_num)
        #         if @tries == 0
        #             # break
        #         end
        #         @tries -= 1
        #         enter_account_num()
        #     end
        # end

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
        if $bank.account_exists?(account)
            puts "Enter account password for account number. #{account}"
            password = gets.chomp
            while tries > 0
                if $bank.open_bank(account, password)
                    puts "Account #{account} accessed successfully!"
                    display_balance()
                    tries = 0
                else
                    puts "Incorrect password, please try again"
                    puts "You have #{tries} left"
                    tries =- 1
                    access_account()
                end
            end
            password = gets.chomp
            if $bank.open_bank(account, password)
                puts "Account Number: #{account} accessed successfully"
                display_balance()
            else
                puts "Incorrect password"
            end
        end
    end

    def withdraw()
        if bank.bank_open?()
            puts "Enter withdrawal amount from account: #{$bank.current_acc}"
            input = gets.to_i
            while input <= 0
                puts "enter a positive value larger than 0"
                input = gets.to_i
            end
            if $bank.withdraw_money(input)
                @cash += input
                display_value()
            else
                puts "Too little money in account, enter a smaller value"
                withdraw()
        end
        else
            puts "Bank isn't open! Please access an account first"
            access_account()
            withdraw()
        end
    end

    def deposit()
        if $bank.bank_open?()
            puts "How much would you like to deposit to account #{$bank.current_acc}"
            input = gets.to_i
            while input <= 0
                puts "enter a positive value larger than 0"
                input = gets.to_i
            end
            if input <= @cash
                $bank.deposit_money(input)
                @cash -= input
                display_balance()
            else
                puts "Too little cash on hand! Deposit less or withdraw more!"
                deposit()
            end
        else
            puts "Bank isn't open! Please access an account first"
            access_account()
            deposit()
        end
    end

#outside a
    def display_balance(account)
        if $bank.bank_open?()
            puts "account: #{@corrent_account}"
            puts "balance: #{@accounts[@current_account][0]}\n"
            return true
        else
            puts "Access denied"
            access_account()
        end
    end
#outside b
    def disply_cash()
    end

#outside c
    def operations()
        puts "Welcome to Mone-Inda Bank"
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
        end #class User
    end
#outside d
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

        * Access to an account is required"#class User
    end

#end function
    def close_bank()
        $bank.close_bank()
    end
end

class Bank
    def initialize()
        @accounts = {10 => [2000, "p455w0rd"]}
        @access_allowed = false
        @current_account = 0
    end
    attr_reader :current_acc

    def register_account(account, password)
        if account_exists?(account)
            return false
        else
            @accounts[account] = [0, password]
            return true
        end
    end

    def account_exists?(account)
        if @accounts.include?(account)
            return true
        else
            return false
        end
    end

    def bank_open?()
        if @access_allowed == false
            return false
        else
            return true
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

    def withraw_money()
        if amount <= @accounts[@current_acc][0]
            @accounts[@current_acc][0] -= amount
            return true
        else
            return false
        end
    end

    def deposit_money(amount)
        @accounts[@current_acc][0] += amount
    end

#outside a
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

#end function
    def close_bank()
        @account_access = false
        @current_account = 0
    end
end

$bank = Bank.new
$user = User.new
$user.operations
