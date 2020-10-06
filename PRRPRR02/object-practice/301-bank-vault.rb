#2020-09-16, acces and take out money, recrusive function with public and private objects
class Access
    def initialize(account_num, password)
        @account_num = 54
        @password = "p455w0rd"
        @tries = 3
    end
#def withdrawal(amout)

def enter_account_num()
    puts "Enter account number: you have #{@tries} tries left"
    account_num = gets.to_i
    if account_num != @account_num
        if @tries == 0
            break
        end
        @tries -= 1
        enter_account_num()
    end
end
puts "Account number: #{@account_num}"

def enter_password()
    puts "Enter password: you have #{@tries} tries left"
    pasword = gets.chomp
    if password != @password
        if @tries == 0
            break
        end
        @tries -= 1
        enter_password()
    end
end

#def withdraw-amount(amount)
#    if accsess_allowed
#        open_safe
#        get_cash(amout)
#        close_safe
#    end

$global_variable = 10 #can be defined outside of functions, normal_variables cannot
