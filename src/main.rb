require "adbc"

SNOWFLAKE_USERNAME = ENV['SNOWFLAKE_USERNAME']
SNOWFLAKE_PASSWORD = ENV['SNOWFLAKE_PASSWORD']
SNOWFLAKE_ACCOUNT = ENV['SNOWFLAKE_ACCOUNT']
SNOWFLAKE_DATABASE = ENV['SNOWFLAKE_DATABASE']
SNOWFLAKE_SCHEMA = ENV['SNOWFLAKE_SCHEMA']

connection_string = "%s:%s@%s/%s/%s" % [SNOWFLAKE_USERNAME, SNOWFLAKE_PASSWORD, SNOWFLAKE_ACCOUNT, SNOWFLAKE_DATABASE, SNOWFLAKE_SCHEMA]

sql_query = "SELECT COUNT(*) as amount FROM DEMAND_FORECAST_TRAINING_BASE"

ADBC::Database.open(driver: "adbc_driver_snowflake",
                    uri: connection_string) do |database|
  database.connect do |connection|
    puts(connection.query(sql_query))
  end
end