## Clustering Analysis on Iris Dataset

The clustering analysis on the Iris dataset was performed using different values of **k** in K-Means. Cluster quality was evaluated using the **Adjusted Rand Index (ARI)**, which measures similarity between the predicted clusters and actual species labels. The results were:

- **k = 2** → ARI = **0.5706**
- **k = 3** → ARI = **0.7292**
- **k = 4** → ARI = **0.6297**

The highest ARI was obtained at **k = 3**, which aligns with the known number of species in the Iris dataset, making it the optimal choice. Misclassifications occurred mainly between *Iris versicolor* and *Iris virginica*, as their features partially overlap in the dataset. 

In real-world applications, clustering can be used for **customer segmentation**, grouping individuals with similar purchasing behavior for targeted marketing. It can also be applied to anomaly detection, image segmentation, and bioinformatics. 

Since this dataset is real (not synthetic), results accurately reflect the natural patterns in Iris species, without biases from artificial data generation.
