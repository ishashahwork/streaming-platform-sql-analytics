# Project notes

Repository name: `streaming-platform-sql-analytics`.

## Retained deliverables and provenance

The folder contained one PDF report, one MySQL Workbench model, and an instructions/feedback document. No competing report or model versions were available. The PDF and model are treated as the final available deliverables on that basis; filename suffixes such as `(1)` and `(2)` alone do not establish a revision history.

| Original filename | Current location | Treatment |
| --- | --- | --- |
| `SQL II GROUP ASSIGNMENT GROUP 6(2).pdf` | [`reports/streaming-platform-report.pdf`](../reports/streaming-platform-report.pdf) | Renamed and moved; bytes unchanged. |
| `GROUP ASSIGNMENT SQL II ERD(1).mwb` | [`model/streaming-platform.mwb`](../model/streaming-platform.mwb) | Renamed and moved; bytes unchanged. |
| `Intructions and Feeback.docx` | `.local/instructions-and-feedback.docx` | Retained locally; excluded from publication. |

The report is dated 16 December 2025. The model metadata records a last change on 15 December 2025 and a MySQL 8.0.33 target. These are artifact dates; no Git commit dates were available.

No `.git` directory was present in the project or its ancestor directories at the initial inspection. There was no local commit history, remote configuration, or Git contributor history to preserve. A new repository on `main` was initialized for portfolio publication; the original artifact credits remain unchanged.

## Attribution

**Isha Shah completed the project in full**, as stated by the project owner. The portfolio README describes that contribution accordingly.

The original report's cover also lists Enzo Jerez, Maria-Irina Popa, Martin Sebastian Schneider Vaquero, and Ocke Moulijn. Those existing credits and the original cover wording are retained in the unchanged PDF. Their individual contributions are not documented in the supplied files, so this repository does not assign them specific work. The model's generic `localadmin` metadata is also unchanged.

## SQL transcription

The original folder had no standalone `.sql` files. The published SQL was extracted from these report sections:

| File | Report section |
| --- | --- |
| [`01_schema.sql`](../sql/01_schema.sql) | Part 3, pages 4-8: 17 `CREATE TABLE` statements. |
| [`02_seed.sql`](../sql/02_seed.sql) | Part 4, pages 8-23: 17 `INSERT INTO` statements. |
| [`03_analysis.sql`](../sql/03_analysis.sql) | Part 5, pages 23-26: five analytical queries. |

Transcription changes were limited to removing page breaks and invisible zero-width characters, rejoining two wrapped SQL comments, adding explanatory comments, changing the sample subscriber email domain from `email.com` to `example.com`, and changing the backslash-escaped apostrophe in `O'Connor` to a doubled SQL quote. Email local parts and all other sample values were retained. The PDF itself was not edited.

The original analytical logic, including Q4's payment multiplication, was preserved. Q1 counts liked viewing rows in an inclusive range starting 30 days before the maximum viewing date. Q3 uses the stored `ACTIVE` status, without an additional date filter. Q5 uses the maximum viewing date minus one year and does not specify a secondary sort key for ties.

## Verification performed

The project owner confirms that the project was executed during its original development. The PDF retains the query-output screenshots and chart from that work; rerunning the project is not a publication prerequisite.

Verified locally on 24 November 2026:

- SHA-256 checks confirmed that all three original files were unchanged by relocation.
- The Workbench ZIP archive passed its integrity check and its model XML parsed successfully. All 17 table names, ordered column names, and 18 foreign-key relationships match the transcribed DDL. The model was not opened in the Workbench application.
- Loaded the schema and all 831 sample rows into an in-memory SQLite database with foreign keys enabled, adapting `AUTO_INCREMENT` to SQLite syntax. Foreign-key and database-integrity checks passed. This does not establish full MySQL dialect, type, collation, or application compatibility.
- Executed the five analyses after translating `DATE_SUB` and `DATE_FORMAT` to SQLite equivalents. Q1, Q2, Q3, and Q5 matched the saved numeric results in the PDF; ordering among equal Q5 totals may vary.
- Inspected report pages 23-26 visually, including the saved query outputs and chart. The README image is the original embedded result image from page 23, extracted without recreating its values.
- No fresh native MySQL execution was completed during portfolio preparation. The compatibility checks supplement the original execution evidence in the report.

### Loaded sample rows

| Table | Rows |
| --- | ---: |
| `actor` | 48 |
| `content` | 41 |
| `content_actor` | 48 |
| `content_genre` | 102 |
| `content_language` | 166 |
| `country` | 20 |
| `genre` | 12 |
| `language` | 15 |
| `payment` | 77 |
| `payment_method` | 9 |
| `payment_method_type` | 3 |
| `payment_status` | 3 |
| `subscriber` | 30 |
| `subscription` | 30 |
| `subscription_plan` | 3 |
| `subscription_status` | 4 |
| `viewing` | 220 |
| **Total** | **831** |

### Revenue-query limitation

The payment table sums to **1,229.23** amount units. Summing the genre-query output produces **38,189.68** because payments are repeated across a subscriber's viewings and each content item's genres. No currency column or revenue-allocation rule exists. These totals were checked locally, rather than taken from the report's screenshots. The chart is retained only in the original report; it is not promoted as a validated revenue result.

## Publication hygiene

The `.gitignore` excludes the local feedback document, environment files, credential/key files, MySQL client credentials, editor/OS files, local database files, backups, logs, and temporary build/output folders. The PDF, Workbench model, SQL, and intentional README image are publication assets.

The model has no saved connections and its password/connection-string fields are empty. Its internal database was inspected and contains no project data rows; a Workbench bookkeeping record remains part of the original archive. The embedded archive `lock` entry is part of the original file and has been retained to preserve it; external Workbench lock/backup files are ignored.

The project owner confirms that the subscriber names and email addresses in the unchanged PDF are synthetic sample records. The runnable SQL uses reserved `example.com` addresses. No credentials were found in the inspected report text, model metadata, or instructions/feedback text; this is a scoped local inspection, not a guarantee about material outside this folder.
