require_relative 'spec_helper'

FUNCTION = 'sum_even'
ARITY = 1
PATH = File.join("lib",FUNCTION+".rb")
RELATIVE_PATH = File.join("..", PATH)

describe FUNCTION do
  
  def self.test_order
    :alpha
  end

  it 'exists' do
    assert File.exist?(PATH), "Du behöver skapa filen #{PATH}"
    require_relative RELATIVE_PATH
  end
  
  it "has a function named #{FUNCTION}" do
    assert (method_exists? FUNCTION.to_sym), "Du behöver definera funktionen #{FUNCTION} i lib/#{FUNCTION}.rb"
  end
  
  it "takes #{ARITY.humanize} argument#{ARITY > 1 ? "s" : ""}" do
    message = "Funktionen #{FUNCTION} måste ta #{ARITY} argument"
    assert_equal ARITY, method(FUNCTION.to_sym).arity, message
  end

  it 'Returnerar summan 2 till input 3' do
    sum_even(3).must_equal 2
  end

  it 'Returnerar summan 0 till input 1' do
    sum_even(1).must_equal 0
  end

  it 'Returnerar summan 240 till input 30' do
    sum_even(30).must_equal 240
  end

  it 'Returnerar summan 5155170 till input 4541' do
    sum_even(4541).must_equal 5155170
  end



end