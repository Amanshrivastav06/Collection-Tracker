-- Creating Table --

CREATE TABLE cms_daily_raw (
    loan_id BIGINT,
    borrower_name TEXT,
    borrower_id BIGINT,
    product_group TEXT,
    source_branch TEXT,
    collection_branch TEXT,
    nbfc_name TEXT,
    loan_amount NUMERIC(18,2),
    current_loan_status TEXT,
    collection_agent TEXT,
    repayment_date DATE,
    due_emi NUMERIC(18,2),
    due_principal NUMERIC(18,2),
    due_interest NUMERIC(18,2),
    overdue_emi NUMERIC(18,2),
    overdue_principal NUMERIC(18,2),
    overdue_interest NUMERIC(18,2),
    overdue_nbc NUMERIC(18,2),
    overdue_lpc NUMERIC(18,2),
    overdue_roc NUMERIC(18,2),
    total_emi_demand NUMERIC(18,2),
    current_principal_demand NUMERIC(18,2),
    arrear_principal_demand NUMERIC(18,2),
    opening_pos NUMERIC(18,2),
    opening_pos_dpd INTEGER,
    loan_status TEXT,
    due_principal_collected NUMERIC(18,2),
    due_int_collected NUMERIC(18,2),
    overdue_principal_collected NUMERIC(18,2),
    od_int_collected NUMERIC(18,2),
    overdue_nbc_collected NUMERIC(18,2),
    overdue_lpc_collected NUMERIC(18,2),
    overdue_roc_collected NUMERIC(18,2),
    total_charges_collected NUMERIC(18,2),
    advance_principal_collected NUMERIC(18,2),
    advance_int_collected NUMERIC(18,2),
    extra_collected NUMERIC(18,2),
    foreclose_amount_collected NUMERIC(18,2),
    foreclose_principal_booked NUMERIC(18,2),
    foreclose_interest_booked NUMERIC(18,2),
    foreclose_charges_booked NUMERIC(18,2),
    current_pos NUMERIC(18,2),
    current_pos_dpd INTEGER,
    dpd_date DATE
);

-- checking how many coloummns

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_name = 'cms_daily_raw';

--- creating Unique index for preventing duplicate data upload with same date.

create unique index ux_cms_daily_loan_date
on cms_daily_raw(loan_id, dpd_date);

-- checking table structure

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'cms_daily_raw'
ORDER BY ordinal_position;

select * from cms_daily_raw