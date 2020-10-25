require 'faraday'
require 'oj'

company = Faraday.new(url: 'http://localhost:3000/api/v1/companies') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('5dc72b1ad1335db2c54dc960e56dc58d')
end

response = company.post do |req|
    # req.body = '{ "company" : {"name": "test company", "address":"123 main street", "city":"Irvine", "state":"CA", "zipcode": 92618, "phonenumber":"9493919398", "building_number": 349} }'
    req.body = '{ "rv": {"name": "FlightHigh3000", "capacity": 10, "rate_per_day": 150.00} }'
    req.url '/api/v1/companies/112/rvs'
    req.headers['Content-Type'] = 'application/json'
    
end

puts Oj.load(response.body)
puts response.status
