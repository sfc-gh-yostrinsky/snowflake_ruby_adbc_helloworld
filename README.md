# Snowflake Ruby ADBC hello world

This repo shows a very simple example of how to integrate Ruby's ADBC gem (red-adbc) with Snowflake
The actual code is in `src/main.rb`
I used Docker but you can use any other way to run Ruby code.

[General ADBC Snowflake driver docs](https://arrow.apache.org/adbc/0.5.1/driver/snowflake.html#uri-format)

## How to run this?

1. Create a .env file in the following format
```
SNOWFLAKE_USERNAME=<Snowflake User>
SNOWFLAKE_PASSWORD=<Snowflake Password>
SNOWFLAKE_ACCOUNT=<ORG Name>-<ACCOUNT Name>
SNOWFLAKE_DATABASE=<DB to query>
SNOWFLAKE_SCHEMA=<Schema to query>
```

2. Edit the query in `src/main.rb` (line 11)

3. Run the docker compose file to build and execute the query
```shell
docker compose -f "docker-compose.yml" up --build
```

4. You can run as many times as needed, you don't have to build everytime
```shell
docker compose -f "docker-compose.yml" up
```