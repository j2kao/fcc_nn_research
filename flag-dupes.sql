-- note that the below was cobbled together from my command history
--I haven't yet re-run it, so, use at your own risk

-- start with the following table containing some of the data scraped from ECFS
-- (I first scraped to mongo and then used https://github.com/stripe/mosql to load into postgresql)

/*                   Table "public.proc_17_108"
           Column           |         Type          | Modifiers 
----------------------------+-----------------------+-----------
 id                         | character varying(40) | not null
 date_submission            | character varying(40) | 
 contact_email              | text                  | 
 confirmation_number        | character varying(40) | 
 text_data                  | text                  | 
 index                      | character varying(40) | 
 filers                     | text                  | 
 addressentity              | text                  | 
 internationaladdressentity | text                  | 
Indexes:
    "proc_17_108_pkey" PRIMARY KEY, btree (id)
*/

-- preserve original
SELECT * INTO proc_17_108_copy FROM proc_17_108;

-- add text hash and pick out unique entries
ALTER TABLE proc_17_108_copy ADD COLUMN text_data_hash uuid;
UPDATE proc_17_108_copy SET text_data_hash = md5(text_data)::uuid;
SELECT DISTINCT ON (text_data_hash) text_data_hash, text_data, docid INTO proc_17_108_copy_uniques FROM proc_17_108_copy;

--add dupe_count and count the number of dupes
ALTER TABLE proc_17_108_copy_uniques ADD COLUMN dupe_count INT DEFAULT NULL;
UPDATE proc_17_108_copy_uniques
SET dupe_count = subquery.dupecount
FROM  (
SELECT text_data_hash as thash, COUNT(text_data_hash) as dupecount
FROM proc_17_108_copy GROUP BY text_data_hash
    ) AS subquery
WHERE proc_17_108_copy_uniques.text_data_hash = subquery.thash;
