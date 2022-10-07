-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/F0YXrw
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Create table for food_cpi_cleaned.csv
CREATE TABLE "food_cpi_full" (
    "date" date   NOT NULL,
    "CPI" DECIMAL   NOT NULL,
    CONSTRAINT "pk_food_cpi_full" PRIMARY KEY (
        "date"
     )
);
--next, manually import food_cpi_cleaned.csv into table


--create table for gas_prices_cleaned.csv
CREATE TABLE "gas_prices_full" (
    "date" date   NOT NULL,
    "all_grades_all_formulation" DECIMAL   NOT NULL,
    "all_grades_conventional" DECIMAL   NOT NULL,
    "all_grades_refomulated" DECIMAL   NOT NULL,
    "regular_all_formulation" DECIMAL   NOT NULL,
    "regular_conventional" DECIMAL   NOT NULL,
    "regular_reformulated" DECIMAL   NOT NULL,
    "midgrade_all_formulation" DECIMAL   NOT NULL,
    "midgrade_conventional" DECIMAL   NOT NULL,
    "midgrade_reformulated" DECIMAL   NOT NULL,
    "premium_all_formulation" DECIMAL   NOT NULL,
    "premium_conventional" DECIMAL   NOT NULL,
    "premium_reformulated" DECIMAL   NOT NULL,
    "no_2_diesel" DECIMAL   NOT NULL,
    CONSTRAINT "pk_gas_prices_full" PRIMARY KEY (
        "date"
     )
);
--next, manually import gas_prices_cleaned.csv into table


--create table for food_cpi_filtered_match.csv
CREATE TABLE "food_cpi_match" (
    "date" date   NOT NULL,
    "CPI" DECIMAL   NOT NULL,
    CONSTRAINT "pk_food_cpi_match" PRIMARY KEY (
        "date"
     )
);
--next, manually import food_cpi_filtered_match.csv into table


--create table for gas_prices_filtered_match.csv
CREATE TABLE "gas_prices_match" (
    "date" date   NOT NULL,
    "all_grades_all_formulation" DECIMAL   NOT NULL,
    "all_grades_conventional" DECIMAL   NOT NULL,
    "all_grades_refomulated" DECIMAL   NOT NULL,
    "regular_all_formulation" DECIMAL   NOT NULL,
    "regular_conventional" DECIMAL   NOT NULL,
    "regular_reformulated" DECIMAL   NOT NULL,
    "midgrade_all_formulation" DECIMAL   NOT NULL,
    "midgrade_conventional" DECIMAL   NOT NULL,
    "midgrade_reformulated" DECIMAL   NOT NULL,
    "premium_all_formulation" DECIMAL   NOT NULL,
    "premium_conventional" DECIMAL   NOT NULL,
    "premium_reformulated" DECIMAL   NOT NULL,
    "no_2_diesel" DECIMAL   NOT NULL,
    CONSTRAINT "pk_gas_prices_match" PRIMARY KEY (
        "date"
     )
);

--next, manually import gas_prices_filtered_match.csv into table

ALTER TABLE "gas_prices_match" ADD CONSTRAINT "fk_gas_prices_match_date" FOREIGN KEY("date")
REFERENCES "food_cpi_match" ("date");

