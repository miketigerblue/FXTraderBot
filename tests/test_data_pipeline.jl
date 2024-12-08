using Test
using HTTP
using LibPQ

@testset "Data Pipeline Tests" begin
    # Test 1: Verify API response
    @testset "API Response" begin
        response = HTTP.get("https://api.exchangerate-api.com/v4/latest/USD")
        @test response.status == 200
        data = JSON.parse(String(response.body))
        @test haskey(data, "rates")
    end

    # Test 2: Verify database connection
    @testset "Database Connection" begin
        conn = LibPQ.Connection("host=localhost dbname=fxdb user=postgres password=yourpassword")
        @test !isempty(LibPQ.execute(conn, "SELECT 1"))
    end

    # Test 3: Insert sample data and verify
    @testset "Database Insert and Query" begin
        LibPQ.execute(conn, "INSERT INTO forex_data (currency_pair, rate) VALUES ('USD_EUR', 0.85)")
        result = LibPQ.execute(conn, "SELECT * FROM forex_data WHERE currency_pair = 'USD_EUR'")
        @test length(result) > 0
    end
end
