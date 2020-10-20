# Acces and take out money, recrusive function with public and private objects
#def withdraw-amount(amount)
#    if access_allowed
#        open_safe
#        get_cash(amout)
#        close_safe
#    end

# Bank application. Withdraw, deposit, access money in bank. Recursive function to do the latter with public and private objects

# Bank class with accessing functions etc. Account class with password, settings functions etc.

class Bank
  def initialize()
    @accounts = {10 => [2000, "pswd"]} # account num: [balance, password]
    @access_allowed = false # whether or not user can access account
    @current_acc = 0
  end
  # attr_reader :current_acc #read up on attribute readers ----


  # puts Bank.new.current_acc => 0
#2a
  def account_exists?(account)
    if @accounts.include?(account)
      return true
    else
      return false
    end
  end
#1
  def register_account(account, password) # Access not needed to create a new account
    if account_exists?(account)
      return false
    else
      @accounts[account] = [0, password]
      p @accounts[account]
      return true
    end
  end


      # def display_accounts() # Just to show balance and passwords of all accounts, not to be in final version
      #   @accounts.each do |acc_num, values|
      #     puts "acc: #{acc_num}"
      #     puts "  bal: #{values[0]} pswd: #{values[1]}"
      #   end
      # end

  def display_balance() #
    if @access_allowed
      return [@current_acc, @accounts[@current_acc][0]]
    else
      return false
    end
  end
#2b
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

#end
  def close_bank()
    @access_allowed = false
    @current_acc = 0
  end

  def bank_open?()
    @access_allowed ? true : false # Ternary Operator: if access_allowed == true return true, else return false
  end
#a
  def deposit_money(amount)
    @accounts[@current_acc][0] += amount
  end

end
#b
def withdraw_money(amount)
    if amount <= @accounts[@current_acc][0]
        @accounts[@current_acc][0] -= amount
        return true
    else
        return false
    end
end





class User
  def initialize()
    @cash = 1000
  end
#1
  def register_account()
    puts "Please input new account number:"
    account = gets.to_i
    puts "Please enter password:"
    password = gets.chomp
    if $bank.register_account(account, password)
      puts "Account created successfully!"
    else
      puts "Account creation failed"
      register_account()
    end
  end

  def bank_open?
    if $bank.bank_open?()
      puts "Account #{$bank.current_acc} currently accessed"
    else
      puts "Bank is currently closed"
    end
  end

#2
  def access_account()
    close_bank() # Not sure if I need this
    puts "Which account should be accessed?"
    account = gets.to_i
    account == "cancel" || account == "Cancel" ? exit : nil # Ternary Operator: if account == "cancel" or "Cancel", exit the function, if not dont do anything
    if $bank.account_exists?(account)
      puts "Enter password for account: #{account}"
      password = gets.chomp
      if $bank.open_bank(account, password)
        puts "Account #{account} accessed successfully!"
        display_balance()
      else
        puts "Incorrect password, please try again"
        access_account()
      end
    end
  end

  def close_bank()
    $bank.close_bank()
  end

  def withdraw()
    if $bank.bank_open?()
      puts "How much would you like to withdraw from account #{$bank.current_acc}"
      input = gets.to_i
      if $bank.withdraw_money(input)
        @cash += input
        display_balance()
      else
        puts "Too little money in the account! Withdraw less or deposit more"
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

  def display_balance()
    if $bank.display_balance()
      # Bank.display_balance() returns an array containing [account num, account bal] if access_allowed = true
      # And if [1] counts as true, so ex. [10, 1000] == true
      # Bank.display_balance() while access_allowed = false returns false, not showing balance

      values = $bank.display_balance() # => [account number, account balance]
      puts "Cash: #{@cash}"
      puts "Account: #{values[0]}"
      puts "  Bal: #{values[1]}"
    else
      puts "Access denied!"
    end
  end

  def display_cash()
    puts "Cash: #{@cash}"
  end


#outside 1
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
#outside 2
  def operations()
    help()
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
end

$bank = Bank.new
$user = User.new
$user.operations
