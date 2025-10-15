🎵 Cleaned Concert Tour Revenue Data

This project contains a cleaned version of a concert tour revenue dataset. The original file had several formatting issues and inconsistencies, so I used SQL to clean it up and make it ready for analysis.

🗂️ Before Cleaning

The raw data had:
- Weird encoding characters (e.g. “BeyoncÃ©” instead of “Beyoncé”, “â€”” instead of “–”).
- Inconsistent year formats (e.g. `2023â€”2024`).
- Mixed symbols and formatting in numeric columns.
- Redundant or duplicate rows.
- Misaligned or unclear column values (like `[1]`, `[4][10]` in peak positions) and so on.

✅ After Cleaning

Using SQL, I:
- Fixed character encoding issues (e.g. corrected artist names and symbols).
- Standardized the year range formatting (e.g. `2023—2024`).
- Cleaned and converted currency columns to consistent numeric formats.
- Removed duplicate or unnecessary rows.
- Renamed columns for clarity and consistency and so on.

🛠 Tools Used

- SQL (via [your SQL tool/platform, e.g. SSMS, MySQL, PostgreSQL, etc.])

📁 Files Included

`cleaning_steps_tour_data.sql` – the SQL queries used to clean the data
`cleaned_tour_data.csv` – the cleaned dataset

🎯 Purpose

This was a mini data cleaning project to take a messy, semi-structured dataset and turn it into something clean, readable, and usable for analysis or visualization.


Feel free to use this dataset for practice, learning, or exploring music tour trends.
