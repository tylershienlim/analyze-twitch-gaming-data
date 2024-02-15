import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv('data/raw/chat.csv')

sqlite_db = 'chat.db'

engine = create_engine('sqlite:///chat.db')

df.to_sql('chat', engine, index=False)

df2 = pd.read_csv('data/raw/video_play.csv')

sqlite_db = 'stream.db'

engine = create_engine('sqlite:///stream.db')

df2.to_sql('stream', engine, index=False)

print('working!')