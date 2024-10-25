import pandas as pd
import matplotlib.pyplot as plt

# Load the data
data_path = "data/coding-environment-exercise.csv"
data = pd.read_csv(data_path)

# Plot the data
data.plot(x='Date', y='Amount', kind='line')  # Adjust columns as needed
plt.title("Sample Data Plot")
plt.xlabel("Date")
plt.ylabel("Amount")
plt.savefig("/app/output/plot_output.png")

