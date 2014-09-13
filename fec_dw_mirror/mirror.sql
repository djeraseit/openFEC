DROP SCHEMA IF EXISTS mirror;
CREATE SCHEMA mirror;
-- select 'CREATE TABLE mirror.' || table_name || ' AS SELECT * FROM frn.' || table_name || ';' from information_schema.tables where table_schema = 'frn';

 CREATE TABLE mirror.dimcand AS SELECT * FROM frn.dimcand;
 CREATE TABLE mirror.dimcandoffice AS SELECT * FROM frn.dimcandoffice;
 CREATE TABLE mirror.dimcandproperties AS SELECT * FROM frn.dimcandproperties;
 CREATE TABLE mirror.dimcmte AS SELECT * FROM frn.dimcmte;
 CREATE TABLE mirror.dimcmteproperties AS SELECT * FROM frn.dimcmteproperties;
 CREATE TABLE mirror.dimcmtetpdsgn AS SELECT * FROM frn.dimcmtetpdsgn;
 CREATE TABLE mirror.dimdates AS SELECT * FROM frn.dimdates;
 CREATE TABLE mirror.dimelectiontp AS SELECT * FROM frn.dimelectiontp;
 CREATE TABLE mirror.dimlinkages AS SELECT * FROM frn.dimlinkages;
 CREATE TABLE mirror.dimoffice AS SELECT * FROM frn.dimoffice;
 CREATE TABLE mirror.dimparty AS SELECT * FROM frn.dimparty;
 CREATE TABLE mirror.dimreporttype AS SELECT * FROM frn.dimreporttype;
 CREATE TABLE mirror.dimyears AS SELECT * FROM frn.dimyears;
 CREATE TABLE mirror.facthousesenate_f3 AS SELECT * FROM frn.facthousesenate_f3;
 CREATE TABLE mirror.factpacsandparties_f3x AS SELECT * FROM frn.factpacsandparties_f3x;
 CREATE TABLE mirror.factpresidential_f3p AS SELECT * FROM frn.factpresidential_f3p;
 CREATE TABLE mirror.form_105 AS SELECT * FROM frn.form_105;
 CREATE TABLE mirror.form_56 AS SELECT * FROM frn.form_56;
 CREATE TABLE mirror.form_57 AS SELECT * FROM frn.form_57;
 CREATE TABLE mirror.form_65 AS SELECT * FROM frn.form_65;
 CREATE TABLE mirror.form_76 AS SELECT * FROM frn.form_76;
 CREATE TABLE mirror.form_82 AS SELECT * FROM frn.form_82;
 CREATE TABLE mirror.form_83 AS SELECT * FROM frn.form_83;
 CREATE TABLE mirror.form_91 AS SELECT * FROM frn.form_91;
 CREATE TABLE mirror.form_94 AS SELECT * FROM frn.form_94;
 CREATE TABLE mirror.sched_a AS SELECT * FROM frn.sched_a;
 CREATE TABLE mirror.sched_b AS SELECT * FROM frn.sched_b;
 CREATE TABLE mirror.sched_c AS SELECT * FROM frn.sched_c;
 CREATE TABLE mirror.sched_c1 AS SELECT * FROM frn.sched_c1;
 CREATE TABLE mirror.sched_c2 AS SELECT * FROM frn.sched_c2;
 CREATE TABLE mirror.sched_d AS SELECT * FROM frn.sched_d;
 CREATE TABLE mirror.sched_e AS SELECT * FROM frn.sched_e;
 CREATE TABLE mirror.sched_f AS SELECT * FROM frn.sched_f;
 CREATE TABLE mirror.sched_h1 AS SELECT * FROM frn.sched_h1;
 CREATE TABLE mirror.sched_h2 AS SELECT * FROM frn.sched_h2;
 CREATE TABLE mirror.sched_h3 AS SELECT * FROM frn.sched_h3;
 CREATE TABLE mirror.sched_h4 AS SELECT * FROM frn.sched_h4;
 CREATE TABLE mirror.sched_h5 AS SELECT * FROM frn.sched_h5;
 CREATE TABLE mirror.sched_h6 AS SELECT * FROM frn.sched_h6;
 CREATE TABLE mirror.sched_i AS SELECT * FROM frn.sched_i;
 CREATE TABLE mirror.sched_l AS SELECT * FROM frn.sched_l;
