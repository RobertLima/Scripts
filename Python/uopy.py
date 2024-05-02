pip install uopy --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org

import uopy
import pandas as pd
from io import StringIO
from uopy import Command

ses = uopy.connect(host='<removed>',user='<removed>',password='<removed>',account='<removed>')

with uopy.connect(user='<removed>',password='<removed>'):
  cmd = uopy.Command("LIST <REMOVED> SAMPLE 5")
  cmd.run()
  response = cmd.response

# Convert the response to a DataFrame
df = pd.read_csv(StringIO(response), sep='',skipinitialspace=True)

# Remove the first two and last row from the DataFrame
df = df.iloc[1:-1]

# Reset the index of the DataFrame
df = df.reset_index(drop=True)

# Drop all columns except for the first 3
df = df.iloc[:,:3]

# Update the header names
df.columns = ['<removed>']

# Replace null values with NaN
df = df.replace('null',float('nan'))

# Print the DataFrame
print(df)