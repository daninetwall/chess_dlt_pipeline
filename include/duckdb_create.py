import duckdb 

conn = duckdb.connect('chess_database.duckdb')

conn.execute("create table if not exists test_table as select 42 as a")

result = conn.execute("select * from test_table").fetchall()

print(result)