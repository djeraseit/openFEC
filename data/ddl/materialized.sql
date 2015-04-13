-- Set up summary tables for fact_* tables.
-- Re-run whenever data in fact_* tables is changed.

-- DROP MATERIALIZED VIEW IF EXISTS facthousesenate_f3_sums;
-- CREATE MATERIALIZED VIEW facthousesenate_f3_sums AS
DROP TABLE facthousesenate_f3_sums CASCADE;
CREATE TABLE facthousesenate_f3_sums AS
  SELECT f.two_yr_period_sk,
         c.cmte_id,
        SUM(COALESCE(f.agr_amt_contrib_pers_fund_prim, 0)) AS agr_amt_contrib_pers_fund_prim,
	SUM(COALESCE(f.agr_amt_pers_contrib_gen, 0)) AS agr_amt_pers_contrib_gen,
	SUM(COALESCE(f.all_other_loans_per, 0)) AS all_other_loans_per,
	SUM(COALESCE(f.all_other_loans_ytd, 0)) AS all_other_loans_ytd,
	SUM(COALESCE(f.begin_image_num, 0)) AS begin_image_num,
	SUM(COALESCE(f.cand_contb_per, 0)) AS cand_contb_per,
	SUM(COALESCE(f.cand_contb_ytd, 0)) AS cand_contb_ytd,
	SUM(COALESCE(f.coh_bop, 0)) AS coh_bop,
	SUM(COALESCE(f.coh_cop_i, 0)) AS coh_cop_i,
	SUM(COALESCE(f.coh_cop_ii, 0)) AS coh_cop_ii,
	SUM(COALESCE(f.cvg_end_dt_sk, 0)) AS cvg_end_dt_sk,
	SUM(COALESCE(f.cvg_start_dt_sk, 0)) AS cvg_start_dt_sk,
	SUM(COALESCE(f.debts_owed_by_cmte, 0)) AS debts_owed_by_cmte,
	SUM(COALESCE(f.debts_owed_to_cmte, 0)) AS debts_owed_to_cmte,
	SUM(COALESCE(f.electiontp_sk, 0)) AS electiontp_sk,
	SUM(COALESCE(f.end_image_num, 0)) AS end_image_num,
	SUM(COALESCE(f.facthousesenate_f3_sk, 0)) AS facthousesenate_f3_sk,
	SUM(COALESCE(f.form_3_sk, 0)) AS form_3_sk,
	SUM(COALESCE(f.grs_rcpt_auth_cmte_gen, 0)) AS grs_rcpt_auth_cmte_gen,
	SUM(COALESCE(f.grs_rcpt_auth_cmte_prim, 0)) AS grs_rcpt_auth_cmte_prim,
	SUM(COALESCE(f.grs_rcpt_min_pers_contrib_gen, 0)) AS grs_rcpt_min_pers_contrib_gen,
	SUM(COALESCE(f.grs_rcpt_min_pers_contrib_prim, 0)) AS grs_rcpt_min_pers_contrib_prim,
	SUM(COALESCE(f.indv_item_contb_per, 0)) AS indv_item_contb_per,
	SUM(COALESCE(f.indv_unitem_contb_per, 0)) AS indv_unitem_contb_per,
	SUM(COALESCE(f.loan_repymts_cand_loans_per, 0)) AS loan_repymts_cand_loans_per,
	SUM(COALESCE(f.loan_repymts_cand_loans_ytd, 0)) AS loan_repymts_cand_loans_ytd,
	SUM(COALESCE(f.loan_repymts_other_loans_per, 0)) AS loan_repymts_other_loans_per,
	SUM(COALESCE(f.loan_repymts_other_loans_ytd, 0)) AS loan_repymts_other_loans_ytd,
	SUM(COALESCE(f.loans_made_by_cand_per, 0)) AS loans_made_by_cand_per,
	SUM(COALESCE(f.loans_made_by_cand_ytd, 0)) AS loans_made_by_cand_ytd,
	SUM(COALESCE(f.net_contb_per, 0)) AS net_contb_per,
	SUM(COALESCE(f.net_contb_ytd, 0)) AS net_contb_ytd,
	SUM(COALESCE(f.net_op_exp_per, 0)) AS net_op_exp_per,
	SUM(COALESCE(f.net_op_exp_ytd, 0)) AS net_op_exp_ytd,
	SUM(COALESCE(f.offsets_to_op_exp_per, 0)) AS offsets_to_op_exp_per,
	SUM(COALESCE(f.offsets_to_op_exp_ytd, 0)) AS offsets_to_op_exp_ytd,
	SUM(COALESCE(f.op_exp_per, 0)) AS op_exp_per,
	SUM(COALESCE(f.op_exp_ytd, 0)) AS op_exp_ytd,
	SUM(COALESCE(f.other_disb_per, 0)) AS other_disb_per,
	SUM(COALESCE(f.other_disb_ytd, 0)) AS other_disb_ytd,
	SUM(COALESCE(f.other_pol_cmte_contb_per, 0)) AS other_pol_cmte_contb_per,
	SUM(COALESCE(f.other_pol_cmte_contb_ytd, 0)) AS other_pol_cmte_contb_ytd,
	SUM(COALESCE(f.other_receipts_per, 0)) AS other_receipts_per,
	SUM(COALESCE(f.other_receipts_ytd, 0)) AS other_receipts_ytd,
	SUM(COALESCE(f.pol_pty_cmte_contb_per, 0)) AS pol_pty_cmte_contb_per,
	SUM(COALESCE(f.pol_pty_cmte_contb_ytd, 0)) AS pol_pty_cmte_contb_ytd,
	SUM(COALESCE(f.ref_indv_contb_per, 0)) AS ref_indv_contb_per,
	SUM(COALESCE(f.ref_indv_contb_ytd, 0)) AS ref_indv_contb_ytd,
	SUM(COALESCE(f.ref_other_pol_cmte_contb_per, 0)) AS ref_other_pol_cmte_contb_per,
	SUM(COALESCE(f.ref_other_pol_cmte_contb_ytd, 0)) AS ref_other_pol_cmte_contb_ytd,
	SUM(COALESCE(f.ref_pol_pty_cmte_contb_per, 0)) AS ref_pol_pty_cmte_contb_per,
	SUM(COALESCE(f.ref_pol_pty_cmte_contb_ytd, 0)) AS ref_pol_pty_cmte_contb_ytd,
	SUM(COALESCE(f.ref_ttl_contb_col_ttl_ytd, 0)) AS ref_ttl_contb_col_ttl_ytd,
	SUM(COALESCE(f.reporttype_sk, 0)) AS reporttype_sk,
	SUM(COALESCE(f.rpt_yr, 0)) AS rpt_yr,
	SUM(COALESCE(f.subttl_per, 0)) AS subttl_per,
	SUM(COALESCE(f.tranf_from_other_auth_cmte_per, 0)) AS tranf_from_other_auth_cmte_per,
	SUM(COALESCE(f.tranf_from_other_auth_cmte_ytd, 0)) AS tranf_from_other_auth_cmte_ytd,
	SUM(COALESCE(f.tranf_to_other_auth_cmte_per, 0)) AS tranf_to_other_auth_cmte_per,
	SUM(COALESCE(f.tranf_to_other_auth_cmte_ytd, 0)) AS tranf_to_other_auth_cmte_ytd,
	SUM(COALESCE(f.transaction_sk, 0)) AS transaction_sk,
	SUM(COALESCE(f.ttl_contb_col_ttl_ytd, 0)) AS ttl_contb_col_ttl_ytd,
	SUM(COALESCE(f.ttl_contb_column_ttl_per, 0)) AS ttl_contb_column_ttl_per,
	SUM(COALESCE(f.ttl_contb_per, 0)) AS ttl_contb_per,
	SUM(COALESCE(f.ttl_contb_ref_col_ttl_per, 0)) AS ttl_contb_ref_col_ttl_per,
	SUM(COALESCE(f.ttl_contb_ref_per, 0)) AS ttl_contb_ref_per,
	SUM(COALESCE(f.ttl_contb_ref_ytd, 0)) AS ttl_contb_ref_ytd,
	SUM(COALESCE(f.ttl_contb_ytd, 0)) AS ttl_contb_ytd,
	SUM(COALESCE(f.ttl_disb_per_i, 0)) AS ttl_disb_per_i,
	SUM(COALESCE(f.ttl_disb_per_ii, 0)) AS ttl_disb_per_ii,
	SUM(COALESCE(f.ttl_disb_ytd, 0)) AS ttl_disb_ytd,
	SUM(COALESCE(f.ttl_indv_contb_per, 0)) AS ttl_indv_contb_per,
	SUM(COALESCE(f.ttl_indv_contb_ytd, 0)) AS ttl_indv_contb_ytd,
	SUM(COALESCE(f.ttl_indv_item_contb_ytd, 0)) AS ttl_indv_item_contb_ytd,
	SUM(COALESCE(f.ttl_indv_unitem_contb_ytd, 0)) AS ttl_indv_unitem_contb_ytd,
	SUM(COALESCE(f.ttl_loan_repymts_per, 0)) AS ttl_loan_repymts_per,
	SUM(COALESCE(f.ttl_loan_repymts_ytd, 0)) AS ttl_loan_repymts_ytd,
	SUM(COALESCE(f.ttl_loans_per, 0)) AS ttl_loans_per,
	SUM(COALESCE(f.ttl_loans_ytd, 0)) AS ttl_loans_ytd,
	SUM(COALESCE(f.ttl_offsets_to_op_exp_per, 0)) AS ttl_offsets_to_op_exp_per,
	SUM(COALESCE(f.ttl_offsets_to_op_exp_ytd, 0)) AS ttl_offsets_to_op_exp_ytd,
	SUM(COALESCE(f.ttl_op_exp_per, 0)) AS ttl_op_exp_per,
	SUM(COALESCE(f.ttl_op_exp_ytd, 0)) AS ttl_op_exp_ytd,
	SUM(COALESCE(f.ttl_receipts_ii, 0)) AS ttl_receipts_ii,
	SUM(COALESCE(f.ttl_receipts_per_i, 0)) AS ttl_receipts_per_i,
	SUM(COALESCE(f.ttl_receipts_ytd, 0)) AS ttl_receipts_ytd
FROM facthousesenate_f3 f
JOIN dimcmte c ON (f.cmte_sk = c.cmte_sk)
GROUP BY two_yr_period_sk, cmte_id;

CREATE INDEX ON facthousesenate_f3_sums (cmte_id, two_yr_period_sk);

ALTER TABLE facthousesenate_f3_sums ADD FOREIGN KEY (cmte_id) REFERENCES dimcmte(cmte_id);

-- ALTER MATERIALIZED VIEW facthousesenate_f3_sums ADD FOREIGN KEY (cmte_id) REFERENCES dimcmte (cmte_id);
-- does not work, of course

DROP TABLE factpresidential_f3p_sums CASCADE;
CREATE TABLE factpresidential_f3p_sums AS
  SELECT f.two_yr_period_sk,
         c.cmte_id,
        SUM(COALESCE(f.alabama_per, 0)) AS alabama_per,
        SUM(COALESCE(f.alabama_ytd, 0)) AS alabama_ytd,
        SUM(COALESCE(f.alaska_per, 0)) AS alaska_per,
        SUM(COALESCE(f.alaska_ytd, 0)) AS alaska_ytd,
        SUM(COALESCE(f.arizona_per, 0)) AS arizona_per,
        SUM(COALESCE(f.arizona_ytd, 0)) AS arizona_ytd,
        SUM(COALESCE(f.arkansas_per, 0)) AS arkansas_per,
        SUM(COALESCE(f.arkansas_ytd, 0)) AS arkansas_ytd,
        SUM(COALESCE(f.begin_image_num, 0)) AS begin_image_num,
        SUM(COALESCE(f.california_per, 0)) AS california_per,
        SUM(COALESCE(f.california_ytd, 0)) AS california_ytd,
        SUM(COALESCE(f.cand_contb_per, 0)) AS cand_contb_per,
        SUM(COALESCE(f.cand_contb_ytd, 0)) AS cand_contb_ytd,
        SUM(COALESCE(f.cmte_sk, 0)) AS cmte_sk,
        SUM(COALESCE(f.coh_bop, 0)) AS coh_bop,
        SUM(COALESCE(f.coh_cop, 0)) AS coh_cop,
        SUM(COALESCE(f.colorado_per, 0)) AS colorado_per,
        SUM(COALESCE(f.colorado_ytd, 0)) AS colorado_ytd,
        SUM(COALESCE(f.connecticut_per, 0)) AS connecticut_per,
        SUM(COALESCE(f.connecticut_ytd, 0)) AS connecticut_ytd,
        SUM(COALESCE(f.cvg_end_dt_sk, 0)) AS cvg_end_dt_sk,
        SUM(COALESCE(f.cvg_start_dt_sk, 0)) AS cvg_start_dt_sk,
        SUM(COALESCE(f.debts_owed_by_cmte, 0)) AS debts_owed_by_cmte,
        SUM(COALESCE(f.debts_owed_to_cmte, 0)) AS debts_owed_to_cmte,
        SUM(COALESCE(f.delaware_per, 0)) AS delaware_per,
        SUM(COALESCE(f.delaware_ytd, 0)) AS delaware_ytd,
        SUM(COALESCE(f.district_columbia_per, 0)) AS district_columbia_per,
        SUM(COALESCE(f.district_columbia_ytd, 0)) AS district_columbia_ytd,
        SUM(COALESCE(f.electiontp_sk, 0)) AS electiontp_sk,
        SUM(COALESCE(f.end_image_num, 0)) AS end_image_num,
        SUM(COALESCE(f.exempt_legal_acctg_disb_per, 0)) AS exempt_legal_acctg_disb_per,
        SUM(COALESCE(f.exempt_legal_acctg_disb_ytd, 0)) AS exempt_legal_acctg_disb_ytd,
        SUM(COALESCE(f.exp_subject_limits, 0)) AS exp_subject_limits,
        SUM(COALESCE(f.factpresidential_f3p_sk, 0)) AS factpresidential_f3p_sk,
        SUM(COALESCE(f.fed_funds_per, 0)) AS fed_funds_per,
        SUM(COALESCE(f.fed_funds_ytd, 0)) AS fed_funds_ytd,
        SUM(COALESCE(f.florida_per, 0)) AS florida_per,
        SUM(COALESCE(f.florida_ytd, 0)) AS florida_ytd,
        SUM(COALESCE(f.fndrsg_disb_per, 0)) AS fndrsg_disb_per,
        SUM(COALESCE(f.fndrsg_disb_ytd, 0)) AS fndrsg_disb_ytd,
        SUM(COALESCE(f.form_3p_sk, 0)) AS form_3p_sk,
        SUM(COALESCE(f.georgia_per, 0)) AS georgia_per,
        SUM(COALESCE(f.georgia_ytd, 0)) AS georgia_ytd,
        SUM(COALESCE(f.guam_per, 0)) AS guam_per,
        SUM(COALESCE(f.guam_ytd, 0)) AS guam_ytd,
        SUM(COALESCE(f.hawaii_per, 0)) AS hawaii_per,
        SUM(COALESCE(f.hawaii_ytd, 0)) AS hawaii_ytd,
        SUM(COALESCE(f.idaho_per, 0)) AS idaho_per,
        SUM(COALESCE(f.idaho_ytd, 0)) AS idaho_ytd,
        SUM(COALESCE(f.illinois_per, 0)) AS illinois_per,
        SUM(COALESCE(f.illinois_ytd, 0)) AS illinois_ytd,
        SUM(COALESCE(f.indiana_per, 0)) AS indiana_per,
        SUM(COALESCE(f.indiana_ytd, 0)) AS indiana_ytd,
        SUM(COALESCE(f.indv_contb_per, 0)) AS indv_contb_per,
        SUM(COALESCE(f.indv_contb_ytd, 0)) AS indv_contb_ytd,
        SUM(COALESCE(f.iowa_per, 0)) AS iowa_per,
        SUM(COALESCE(f.iowa_ytd, 0)) AS iowa_ytd,
        SUM(COALESCE(f.items_on_hand_liquidated, 0)) AS items_on_hand_liquidated,
        SUM(COALESCE(f.kansas_per, 0)) AS kansas_per,
        SUM(COALESCE(f.kansas_ytd, 0)) AS kansas_ytd,
        SUM(COALESCE(f.kentucky_per, 0)) AS kentucky_per,
        SUM(COALESCE(f.kentucky_ytd, 0)) AS kentucky_ytd,
        SUM(COALESCE(f.loans_received_from_cand_per, 0)) AS loans_received_from_cand_per,
        SUM(COALESCE(f.loans_received_from_cand_ytd, 0)) AS loans_received_from_cand_ytd,
        SUM(COALESCE(f.louisiana_per, 0)) AS louisiana_per,
        SUM(COALESCE(f.louisiana_ytd, 0)) AS louisiana_ytd,
        SUM(COALESCE(f.maine_per, 0)) AS maine_per,
        SUM(COALESCE(f.maine_ytd, 0)) AS maine_ytd,
        SUM(COALESCE(f.maryland_per, 0)) AS maryland_per,
        SUM(COALESCE(f.maryland_ytd, 0)) AS maryland_ytd,
        SUM(COALESCE(f.massachusetts_per, 0)) AS massachusetts_per,
        SUM(COALESCE(f.massachusetts_ytd, 0)) AS massachusetts_ytd,
        SUM(COALESCE(f.michigan_per, 0)) AS michigan_per,
        SUM(COALESCE(f.michigan_ytd, 0)) AS michigan_ytd,
        SUM(COALESCE(f.minnesota_per, 0)) AS minnesota_per,
        SUM(COALESCE(f.minnesota_ytd, 0)) AS minnesota_ytd,
        SUM(COALESCE(f.mississippi_per, 0)) AS mississippi_per,
        SUM(COALESCE(f.mississippi_ytd, 0)) AS mississippi_ytd,
        SUM(COALESCE(f.missouri_per, 0)) AS missouri_per,
        SUM(COALESCE(f.missouri_ytd, 0)) AS missouri_ytd,
        SUM(COALESCE(f.montana_per, 0)) AS montana_per,
        SUM(COALESCE(f.montana_ytd, 0)) AS montana_ytd,
        SUM(COALESCE(f.nebraska_per, 0)) AS nebraska_per,
        SUM(COALESCE(f.nebraska_ytd, 0)) AS nebraska_ytd,
        SUM(COALESCE(f.net_contb_sum_page_per, 0)) AS net_contb_sum_page_per,
        SUM(COALESCE(f.net_op_exp_sum_page_per, 0)) AS net_op_exp_sum_page_per,
        SUM(COALESCE(f.nevada_per, 0)) AS nevada_per,
        SUM(COALESCE(f.nevada_ytd, 0)) AS nevada_ytd,
        SUM(COALESCE(f.new_hampshire_per, 0)) AS new_hampshire_per,
        SUM(COALESCE(f.new_hampshire_ytd, 0)) AS new_hampshire_ytd,
        SUM(COALESCE(f.new_jersey_per, 0)) AS new_jersey_per,
        SUM(COALESCE(f.new_jersey_ytd, 0)) AS new_jersey_ytd,
        SUM(COALESCE(f.new_mexico_per, 0)) AS new_mexico_per,
        SUM(COALESCE(f.new_mexico_ytd, 0)) AS new_mexico_ytd,
        SUM(COALESCE(f.new_york_per, 0)) AS new_york_per,
        SUM(COALESCE(f.new_york_ytd, 0)) AS new_york_ytd,
        SUM(COALESCE(f.north_carolina_per, 0)) AS north_carolina_per,
        SUM(COALESCE(f.north_carolina_ytd, 0)) AS north_carolina_ytd,
        SUM(COALESCE(f.north_dakota_per, 0)) AS north_dakota_per,
        SUM(COALESCE(f.north_dakota_ytd, 0)) AS north_dakota_ytd,
        SUM(COALESCE(f.offsets_to_fndrsg_exp_per, 0)) AS offsets_to_fndrsg_exp_per,
        SUM(COALESCE(f.offsets_to_fndrsg_exp_ytd, 0)) AS offsets_to_fndrsg_exp_ytd,
        SUM(COALESCE(f.offsets_to_legal_acctg_per, 0)) AS offsets_to_legal_acctg_per,
        SUM(COALESCE(f.offsets_to_legal_acctg_ytd, 0)) AS offsets_to_legal_acctg_ytd,
        SUM(COALESCE(f.offsets_to_op_exp_per, 0)) AS offsets_to_op_exp_per,
        SUM(COALESCE(f.offsets_to_op_exp_ytd, 0)) AS offsets_to_op_exp_ytd,
        SUM(COALESCE(f.ohio_per, 0)) AS ohio_per,
        SUM(COALESCE(f.ohio_ytd, 0)) AS ohio_ytd,
        SUM(COALESCE(f.oklahoma_per, 0)) AS oklahoma_per,
        SUM(COALESCE(f.oklahoma_ytd, 0)) AS oklahoma_ytd,
        SUM(COALESCE(f.op_exp_per, 0)) AS op_exp_per,
        SUM(COALESCE(f.op_exp_ytd, 0)) AS op_exp_ytd,
        SUM(COALESCE(f.oregon_per, 0)) AS oregon_per,
        SUM(COALESCE(f.oregon_ytd, 0)) AS oregon_ytd,
        SUM(COALESCE(f.other_disb_per, 0)) AS other_disb_per,
        SUM(COALESCE(f.other_disb_ytd, 0)) AS other_disb_ytd,
        SUM(COALESCE(f.other_loans_received_per, 0)) AS other_loans_received_per,
        SUM(COALESCE(f.other_loans_received_ytd, 0)) AS other_loans_received_ytd,
        SUM(COALESCE(f.other_pol_cmte_contb_per, 0)) AS other_pol_cmte_contb_per,
        SUM(COALESCE(f.other_pol_cmte_contb_ytd, 0)) AS other_pol_cmte_contb_ytd,
        SUM(COALESCE(f.other_receipts_per, 0)) AS other_receipts_per,
        SUM(COALESCE(f.other_receipts_ytd, 0)) AS other_receipts_ytd,
        SUM(COALESCE(f.pennsylvania_per, 0)) AS pennsylvania_per,
        SUM(COALESCE(f.pennsylvania_ytd, 0)) AS pennsylvania_ytd,
        SUM(COALESCE(f.pol_pty_cmte_contb_per, 0)) AS pol_pty_cmte_contb_per,
        SUM(COALESCE(f.pol_pty_cmte_contb_ytd, 0)) AS pol_pty_cmte_contb_ytd,
        SUM(COALESCE(f.puerto_rico_per, 0)) AS puerto_rico_per,
        SUM(COALESCE(f.puerto_rico_ytd, 0)) AS puerto_rico_ytd,
        SUM(COALESCE(f.ref_indv_contb_per, 0)) AS ref_indv_contb_per,
        SUM(COALESCE(f.ref_indv_contb_ytd, 0)) AS ref_indv_contb_ytd,
        SUM(COALESCE(f.ref_other_pol_cmte_contb_per, 0)) AS ref_other_pol_cmte_contb_per,
        SUM(COALESCE(f.ref_other_pol_cmte_contb_ytd, 0)) AS ref_other_pol_cmte_contb_ytd,
        SUM(COALESCE(f.ref_pol_pty_cmte_contb_per, 0)) AS ref_pol_pty_cmte_contb_per,
        SUM(COALESCE(f.ref_pol_pty_cmte_contb_ytd, 0)) AS ref_pol_pty_cmte_contb_ytd,
        SUM(COALESCE(f.reporttype_sk, 0)) AS reporttype_sk,
        SUM(COALESCE(f.repymts_loans_made_by_cand_per, 0)) AS repymts_loans_made_by_cand_per,
        SUM(COALESCE(f.repymts_loans_made_cand_ytd, 0)) AS repymts_loans_made_cand_ytd,
        SUM(COALESCE(f.repymts_other_loans_per, 0)) AS repymts_other_loans_per,
        SUM(COALESCE(f.repymts_other_loans_ytd, 0)) AS repymts_other_loans_ytd,
        SUM(COALESCE(f.rhode_island_per, 0)) AS rhode_island_per,
        SUM(COALESCE(f.rhode_island_ytd, 0)) AS rhode_island_ytd,
        SUM(COALESCE(f.rpt_yr, 0)) AS rpt_yr,
        SUM(COALESCE(f.south_carolina_per, 0)) AS south_carolina_per,
        SUM(COALESCE(f.south_carolina_ytd, 0)) AS south_carolina_ytd,
        SUM(COALESCE(f.south_dakota_per, 0)) AS south_dakota_per,
        SUM(COALESCE(f.south_dakota_ytd, 0)) AS south_dakota_ytd,
        SUM(COALESCE(f.subttl_sum_page_per, 0)) AS subttl_sum_page_per,
        SUM(COALESCE(f.tennessee_per, 0)) AS tennessee_per,
        SUM(COALESCE(f.tennessee_ytd, 0)) AS tennessee_ytd,
        SUM(COALESCE(f.texas_per, 0)) AS texas_per,
        SUM(COALESCE(f.texas_ytd, 0)) AS texas_ytd,
        SUM(COALESCE(f.tranf_from_affilated_cmte_per, 0)) AS tranf_from_affilated_cmte_per,
        SUM(COALESCE(f.tranf_from_affiliated_cmte_ytd, 0)) AS tranf_from_affiliated_cmte_ytd,
        SUM(COALESCE(f.tranf_to_other_auth_cmte_per, 0)) AS tranf_to_other_auth_cmte_per,
        SUM(COALESCE(f.tranf_to_other_auth_cmte_ytd, 0)) AS tranf_to_other_auth_cmte_ytd,
        SUM(COALESCE(f.transaction_sk, 0)) AS transaction_sk,
        SUM(COALESCE(f.ttl_contb_per, 0)) AS ttl_contb_per,
        SUM(COALESCE(f.ttl_contb_ref_per, 0)) AS ttl_contb_ref_per,
        SUM(COALESCE(f.ttl_contb_ref_ytd, 0)) AS ttl_contb_ref_ytd,
        SUM(COALESCE(f.ttl_contb_ytd, 0)) AS ttl_contb_ytd,
        SUM(COALESCE(f.ttl_disb_per, 0)) AS ttl_disb_per,
        SUM(COALESCE(f.ttl_disb_sum_page_per, 0)) AS ttl_disb_sum_page_per,
        SUM(COALESCE(f.ttl_disb_ytd, 0)) AS ttl_disb_ytd,
        SUM(COALESCE(f.ttl_loan_repymts_made_per, 0)) AS ttl_loan_repymts_made_per,
        SUM(COALESCE(f.ttl_loan_repymts_made_ytd, 0)) AS ttl_loan_repymts_made_ytd,
        SUM(COALESCE(f.ttl_loans_received_per, 0)) AS ttl_loans_received_per,
        SUM(COALESCE(f.ttl_loans_received_ytd, 0)) AS ttl_loans_received_ytd,
        SUM(COALESCE(f.ttl_offsets_to_op_exp_per, 0)) AS ttl_offsets_to_op_exp_per,
        SUM(COALESCE(f.ttl_offsets_to_op_exp_ytd, 0)) AS ttl_offsets_to_op_exp_ytd,
        SUM(COALESCE(f.ttl_per, 0)) AS ttl_per,
        SUM(COALESCE(f.ttl_receipts_per, 0)) AS ttl_receipts_per,
        SUM(COALESCE(f.ttl_receipts_sum_page_per, 0)) AS ttl_receipts_sum_page_per,
        SUM(COALESCE(f.ttl_receipts_ytd, 0)) AS ttl_receipts_ytd,
        SUM(COALESCE(f.ttl_ytd, 0)) AS ttl_ytd,
        SUM(COALESCE(f.utah_per, 0)) AS utah_per,
        SUM(COALESCE(f.utah_ytd, 0)) AS utah_ytd,
        SUM(COALESCE(f.vermont_per, 0)) AS vermont_per,
        SUM(COALESCE(f.vermont_ytd, 0)) AS vermont_ytd,
        SUM(COALESCE(f.virgin_islands_per, 0)) AS virgin_islands_per,
        SUM(COALESCE(f.virgin_islands_ytd, 0)) AS virgin_islands_ytd,
        SUM(COALESCE(f.virginia_per, 0)) AS virginia_per,
        SUM(COALESCE(f.virginia_ytd, 0)) AS virginia_ytd,
        SUM(COALESCE(f.washington_per, 0)) AS washington_per,
        SUM(COALESCE(f.washington_ytd, 0)) AS washington_ytd,
        SUM(COALESCE(f.west_virginia_per, 0)) AS west_virginia_per,
        SUM(COALESCE(f.west_virginia_ytd, 0)) AS west_virginia_ytd,
        SUM(COALESCE(f.wisconsin_per, 0)) AS wisconsin_per,
        SUM(COALESCE(f.wisconsin_ytd, 0)) AS wisconsin_ytd,
        SUM(COALESCE(f.wyoming_per, 0)) AS wyoming_per,
        SUM(COALESCE(f.wyoming_ytd, 0)) AS wyoming_ytd
FROM factpresidential_f3p f
JOIN dimcmte c ON (f.cmte_sk = c.cmte_sk)
GROUP BY two_yr_period_sk, cmte_id;

CREATE INDEX ON factpresidential_f3p_sums (cmte_id, two_yr_period_sk);

ALTER TABLE factpresidential_f3p_sums ADD FOREIGN KEY (cmte_id) REFERENCES dimcmte(cmte_id);






DROP TABLE factpacsandparties_f3x_sums CASCADE;
CREATE TABLE factpacsandparties_f3x_sums AS
  SELECT f.two_yr_period_sk,
         c.cmte_id,
        SUM(COALESCE(f.all_loans_received_per, 0)) AS all_loans_received_per,
        SUM(COALESCE(f.all_loans_received_ytd, 0)) AS all_loans_received_ytd,
        SUM(COALESCE(f.begin_image_num, 0)) AS begin_image_num,
        SUM(COALESCE(f.calendar_yr, 0)) AS calendar_yr,
        SUM(COALESCE(f.cmte_sk, 0)) AS cmte_sk,
        SUM(COALESCE(f.coh_begin_calendar_yr, 0)) AS coh_begin_calendar_yr,
        SUM(COALESCE(f.coh_bop, 0)) AS coh_bop,
        SUM(COALESCE(f.coh_cop, 0)) AS coh_cop,
        SUM(COALESCE(f.coh_coy, 0)) AS coh_coy,
        SUM(COALESCE(f.coord_exp_by_pty_cmte_per, 0)) AS coord_exp_by_pty_cmte_per,
        SUM(COALESCE(f.coord_exp_by_pty_cmte_ytd, 0)) AS coord_exp_by_pty_cmte_ytd,
        SUM(COALESCE(f.cvg_end_dt_sk, 0)) AS cvg_end_dt_sk,
        SUM(COALESCE(f.cvg_start_dt_sk, 0)) AS cvg_start_dt_sk,
        SUM(COALESCE(f.debts_owed_by_cmte, 0)) AS debts_owed_by_cmte,
        SUM(COALESCE(f.debts_owed_to_cmte, 0)) AS debts_owed_to_cmte,
        SUM(COALESCE(f.electiontp_sk, 0)) AS electiontp_sk,
        SUM(COALESCE(f.end_image_num, 0)) AS end_image_num,
        SUM(COALESCE(f.factpacsandparties_f3x_sk, 0)) AS factpacsandparties_f3x_sk,
        SUM(COALESCE(f.fed_cand_cmte_contb_per, 0)) AS fed_cand_cmte_contb_per,
        SUM(COALESCE(f.fed_cand_cmte_contb_ref_ytd, 0)) AS fed_cand_cmte_contb_ref_ytd,
        SUM(COALESCE(f.fed_cand_cmte_contb_ytd, 0)) AS fed_cand_cmte_contb_ytd,
        SUM(COALESCE(f.fed_cand_contb_ref_per, 0)) AS fed_cand_contb_ref_per,
        SUM(COALESCE(f.form_3x_sk, 0)) AS form_3x_sk,
        SUM(COALESCE(f.indt_exp_per, 0)) AS indt_exp_per,
        SUM(COALESCE(f.indt_exp_ytd, 0)) AS indt_exp_ytd,
        SUM(COALESCE(f.indv_contb_ref_per, 0)) AS indv_contb_ref_per,
        SUM(COALESCE(f.indv_contb_ref_ytd, 0)) AS indv_contb_ref_ytd,
        SUM(COALESCE(f.indv_item_contb_per, 0)) AS indv_item_contb_per,
        SUM(COALESCE(f.indv_item_contb_ytd, 0)) AS indv_item_contb_ytd,
        SUM(COALESCE(f.indv_unitem_contb_per, 0)) AS indv_unitem_contb_per,
        SUM(COALESCE(f.indv_unitem_contb_ytd, 0)) AS indv_unitem_contb_ytd,
        SUM(COALESCE(f.loan_repymts_made_per, 0)) AS loan_repymts_made_per,
        SUM(COALESCE(f.loan_repymts_made_ytd, 0)) AS loan_repymts_made_ytd,
        SUM(COALESCE(f.loan_repymts_received_per, 0)) AS loan_repymts_received_per,
        SUM(COALESCE(f.loan_repymts_received_ytd, 0)) AS loan_repymts_received_ytd,
        SUM(COALESCE(f.loans_made_per, 0)) AS loans_made_per,
        SUM(COALESCE(f.loans_made_ytd, 0)) AS loans_made_ytd,
        SUM(COALESCE(f.net_contb_per, 0)) AS net_contb_per,
        SUM(COALESCE(f.net_contb_ytd, 0)) AS net_contb_ytd,
        SUM(COALESCE(f.net_op_exp_per, 0)) AS net_op_exp_per,
        SUM(COALESCE(f.net_op_exp_ytd, 0)) AS net_op_exp_ytd,
        SUM(COALESCE(f.non_alloc_fed_elect_actvy_per, 0)) AS non_alloc_fed_elect_actvy_per,
        SUM(COALESCE(f.non_alloc_fed_elect_actvy_ytd, 0)) AS non_alloc_fed_elect_actvy_ytd,
        SUM(COALESCE(f.offsets_to_op_exp_per_i, 0)) AS offsets_to_op_exp_per_i,
        SUM(COALESCE(f.offsets_to_op_exp_per_ii, 0)) AS offsets_to_op_exp_per_ii,
        SUM(COALESCE(f.offsets_to_op_exp_ytd_i, 0)) AS offsets_to_op_exp_ytd_i,
        SUM(COALESCE(f.offsets_to_op_exp_ytd_ii, 0)) AS offsets_to_op_exp_ytd_ii,
        SUM(COALESCE(f.other_disb_per, 0)) AS other_disb_per,
        SUM(COALESCE(f.other_disb_ytd, 0)) AS other_disb_ytd,
        SUM(COALESCE(f.other_fed_op_exp_per, 0)) AS other_fed_op_exp_per,
        SUM(COALESCE(f.other_fed_op_exp_ytd, 0)) AS other_fed_op_exp_ytd,
        SUM(COALESCE(f.other_fed_receipts_per, 0)) AS other_fed_receipts_per,
        SUM(COALESCE(f.other_fed_receipts_ytd, 0)) AS other_fed_receipts_ytd,
        SUM(COALESCE(f.other_pol_cmte_contb_per_i, 0)) AS other_pol_cmte_contb_per_i,
        SUM(COALESCE(f.other_pol_cmte_contb_per_ii, 0)) AS other_pol_cmte_contb_per_ii,
        SUM(COALESCE(f.other_pol_cmte_contb_ytd_i, 0)) AS other_pol_cmte_contb_ytd_i,
        SUM(COALESCE(f.other_pol_cmte_contb_ytd_ii, 0)) AS other_pol_cmte_contb_ytd_ii,
        SUM(COALESCE(f.pol_pty_cmte_contb_per_i, 0)) AS pol_pty_cmte_contb_per_i,
        SUM(COALESCE(f.pol_pty_cmte_contb_per_ii, 0)) AS pol_pty_cmte_contb_per_ii,
        SUM(COALESCE(f.pol_pty_cmte_contb_ytd_i, 0)) AS pol_pty_cmte_contb_ytd_i,
        SUM(COALESCE(f.pol_pty_cmte_contb_ytd_ii, 0)) AS pol_pty_cmte_contb_ytd_ii,
        SUM(COALESCE(f.reporttype_sk, 0)) AS reporttype_sk,
        SUM(COALESCE(f.rpt_yr, 0)) AS rpt_yr,
        SUM(COALESCE(f.shared_fed_actvy_fed_shr_per, 0)) AS shared_fed_actvy_fed_shr_per,
        SUM(COALESCE(f.shared_fed_actvy_fed_shr_ytd, 0)) AS shared_fed_actvy_fed_shr_ytd,
        SUM(COALESCE(f.shared_fed_actvy_nonfed_per, 0)) AS shared_fed_actvy_nonfed_per,
        SUM(COALESCE(f.shared_fed_actvy_nonfed_ytd, 0)) AS shared_fed_actvy_nonfed_ytd,
        SUM(COALESCE(f.shared_fed_op_exp_per, 0)) AS shared_fed_op_exp_per,
        SUM(COALESCE(f.shared_fed_op_exp_ytd, 0)) AS shared_fed_op_exp_ytd,
        SUM(COALESCE(f.shared_nonfed_op_exp_per, 0)) AS shared_nonfed_op_exp_per,
        SUM(COALESCE(f.shared_nonfed_op_exp_ytd, 0)) AS shared_nonfed_op_exp_ytd,
        SUM(COALESCE(f.subttl_sum_page_per, 0)) AS subttl_sum_page_per,
        SUM(COALESCE(f.subttl_sum_ytd, 0)) AS subttl_sum_ytd,
        SUM(COALESCE(f.tranf_from_affiliated_pty_per, 0)) AS tranf_from_affiliated_pty_per,
        SUM(COALESCE(f.tranf_from_affiliated_pty_ytd, 0)) AS tranf_from_affiliated_pty_ytd,
        SUM(COALESCE(f.tranf_from_nonfed_acct_per, 0)) AS tranf_from_nonfed_acct_per,
        SUM(COALESCE(f.tranf_from_nonfed_acct_ytd, 0)) AS tranf_from_nonfed_acct_ytd,
        SUM(COALESCE(f.tranf_from_nonfed_levin_per, 0)) AS tranf_from_nonfed_levin_per,
        SUM(COALESCE(f.tranf_from_nonfed_levin_ytd, 0)) AS tranf_from_nonfed_levin_ytd,
        SUM(COALESCE(f.tranf_to_affilitated_cmte_ytd, 0)) AS tranf_to_affilitated_cmte_ytd,
        SUM(COALESCE(f.tranf_to_affliliated_cmte_per, 0)) AS tranf_to_affliliated_cmte_per,
        SUM(COALESCE(f.transaction_sk, 0)) AS transaction_sk,
        SUM(COALESCE(f.ttl_contb_col_ttl_per, 0)) AS ttl_contb_col_ttl_per,
        SUM(COALESCE(f.ttl_contb_col_ttl_ytd, 0)) AS ttl_contb_col_ttl_ytd,
        SUM(COALESCE(f.ttl_contb_per, 0)) AS ttl_contb_per,
        SUM(COALESCE(f.ttl_contb_ref_per_i, 0)) AS ttl_contb_ref_per_i,
        SUM(COALESCE(f.ttl_contb_ref_per_ii, 0)) AS ttl_contb_ref_per_ii,
        SUM(COALESCE(f.ttl_contb_ref_ytd_i, 0)) AS ttl_contb_ref_ytd_i,
        SUM(COALESCE(f.ttl_contb_ref_ytd_ii, 0)) AS ttl_contb_ref_ytd_ii,
        SUM(COALESCE(f.ttl_contb_ytd, 0)) AS ttl_contb_ytd,
        SUM(COALESCE(f.ttl_disb_per, 0)) AS ttl_disb_per,
        SUM(COALESCE(f.ttl_disb_sum_page_per, 0)) AS ttl_disb_sum_page_per,
        SUM(COALESCE(f.ttl_disb_sum_page_ytd, 0)) AS ttl_disb_sum_page_ytd,
        SUM(COALESCE(f.ttl_disb_ytd, 0)) AS ttl_disb_ytd,
        SUM(COALESCE(f.ttl_fed_disb_per, 0)) AS ttl_fed_disb_per,
        SUM(COALESCE(f.ttl_fed_disb_ytd, 0)) AS ttl_fed_disb_ytd,
        SUM(COALESCE(f.ttl_fed_elect_actvy_per, 0)) AS ttl_fed_elect_actvy_per,
        SUM(COALESCE(f.ttl_fed_elect_actvy_ytd, 0)) AS ttl_fed_elect_actvy_ytd,
        SUM(COALESCE(f.ttl_fed_op_exp_per, 0)) AS ttl_fed_op_exp_per,
        SUM(COALESCE(f.ttl_fed_op_exp_ytd, 0)) AS ttl_fed_op_exp_ytd,
        SUM(COALESCE(f.ttl_fed_receipts_per, 0)) AS ttl_fed_receipts_per,
        SUM(COALESCE(f.ttl_fed_receipts_ytd, 0)) AS ttl_fed_receipts_ytd,
        SUM(COALESCE(f.ttl_indv_contb, 0)) AS ttl_indv_contb,
        SUM(COALESCE(f.ttl_indv_contb_ytd, 0)) AS ttl_indv_contb_ytd,
        SUM(COALESCE(f.ttl_nonfed_tranf_per, 0)) AS ttl_nonfed_tranf_per,
        SUM(COALESCE(f.ttl_nonfed_tranf_ytd, 0)) AS ttl_nonfed_tranf_ytd,
        SUM(COALESCE(f.ttl_op_exp_per, 0)) AS ttl_op_exp_per,
        SUM(COALESCE(f.ttl_op_exp_ytd, 0)) AS ttl_op_exp_ytd,
        SUM(COALESCE(f.ttl_receipts_per, 0)) AS ttl_receipts_per,
        SUM(COALESCE(f.ttl_receipts_sum_page_per, 0)) AS ttl_receipts_sum_page_per,
        SUM(COALESCE(f.ttl_receipts_sum_page_ytd, 0)) AS ttl_receipts_sum_page_ytd,
        SUM(COALESCE(f.ttl_receipts_ytd, 0)) AS ttl_receipts_ytd
FROM factpacsandparties_f3x f
JOIN dimcmte c ON (f.cmte_sk = c.cmte_sk)
GROUP BY two_yr_period_sk, cmte_id;

CREATE INDEX ON factpacsandparties_f3x_sums (cmte_id, two_yr_period_sk);

ALTER TABLE factpacsandparties_f3x_sums ADD FOREIGN KEY (cmte_id) REFERENCES dimcmte(cmte_id);

GRANT SELECT ON factpacsandparties_f3x TO webro;
GRANT SELECT ON facthousesenate_f3 TO webro;
GRANT SELECT ON factpresidential_f3p TO webro;
