#2021-02-19, fetch data from a public API service

require 'httparty'
require 'pp'

response = HTTParty.get('https://dog.ceo/api/breeds/list/all')

body = response.body

facts = JSON.parse(body)

p facts