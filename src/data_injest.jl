using HTTP, JSON, LibPQ

# Connect to PostgreSQL
conn = LibPQ.Connection("host=localhost dbname=fxdb user=postgres password=yourpassword")

# Fetch data from API
response = HTTP.get("https://api.exchangerate-api.com/v4/latest/USD")
data = JSON.parse(String(response.body))

# Insert data into the table
for (currency, rate) in data["rates"]
    LibPQ.execute(conn, "INSERT INTO forex_data (currency_pair, rate) VALUES ($1, $2)", 
                  "USD_$currency", rate)
end
