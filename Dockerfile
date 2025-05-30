FROM astrocrpublic.azurecr.io/runtime:3.0-2

# install dbt into a virtual environment
RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-core dbt-duckdb && deactivate