#  Analyzing Twitch Gaming Data
by @tylershienlim

## Project Overview
*About Twitch:*

Twitch is the world’s leading video platform and community where millions of people and thousands of interests collide in a beautiful explosion of video games, pop culture, and conversation. Its live and on-demand video platform forms the backbone of a distribution network for video game broadcasters including professional players, tournaments, leagues, developers and gaming media organizations.

This project has two objectives:
1. Analyze Twitch Gaming Data (Using `SQL`)
2. Visualize Twitch Gaming Data (Using `Python`)


## Technologies & Tools used
- Python
- VSCode
- Jupyter Notebook
- SQL
- Microsoft SQL Server Management Studio 
- Other dependencies as required.

## Prerequisites / Installation

1. Host local server in SSMS using SQL Server Developer
2. Connect SSMS to local hosted SQL Server
3. Load raw data sets (`chat.csv` & `video_play.csv`) into SSMS

*Alternative*
1. Use `convert.py` to convert datasets into `.db` files to use SQLite instead of SSMS

## Data Preprocessing
Data was preprocessed using **Microsoft's SQL Server Management Studio**

## Code Structure
Below is the tree for the code structure.
1. Data is differentiated into raw and processed data
    - Raw data is the original data sources obtained from Codecademy
    - Processed data are the outputs as a result of the SQL Queries executed
    - SQL Queries can be found in the `twitch-exploration.sql` file
2. Using the processed data found in `./data/processed` directory:
    - Bar graph is visualized
    - Pie chart is visualized
    - Line plot is visualized

📦cc-twitch-gaming-data
 ┣ 📂data
 ┃ ┣ 📂processed
 ┃ ┃ ┣ 📜distinct_channels.csv
 ┃ ┃ ┣ 📜distinct_games.csv
 ┃ ┃ ┣ 📜genre_classification.csv
 ┃ ┃ ┣ 📜LoL_viewer_countries.csv
 ┃ ┃ ┣ 📜popular_games.csv
 ┃ ┃ ┣ 📜streaming_modes.csv
 ┃ ┃ ┣ 📜view_count_hour_total.csv
 ┃ ┃ ┗ 📜view_count_hour_US.csv
 ┃ ┗ 📂raw
 ┃ ┃ ┣ 📜chat.csv
 ┃ ┃ ┗ 📜video_play.csv
 ┣ 📜convert.py
 ┣ 📜README.md
 ┣ 📜twitch-exploration.sql
 ┣ 📜twitch-plots.ipynb
 ┗ 📜twitchlogo.png

## Results
3 different visualizations were created.

## Acknowledgement / References
This project including datasets were provided and guided by `Codecademy` part of the **Data Scientist: Analyst** Course
Dataset was provided by [Codecademy](https://github.com/Codecademy-Curriculum/Codecademy-Learn-SQL-from-Scratch/tree/master/Twitch)