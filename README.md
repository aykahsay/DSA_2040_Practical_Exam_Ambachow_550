# DSA_2040_Practical_Exam_Ambachow_550


Perfect! Based on your folder structure, here’s a **clean, general README** tailored to your setup, with clear guidance on where to insert images and outputs.

---

# DSA 2040 Practical Exam – Ambachow 550

This repository contains the submissions for the **DSA 2040 End Semester Practical Exam**, covering **Data Warehousing, K-Means Clustering, Classification, and Association Rule Mining**. The project is organized into modular folders for clarity.

---

## **Folder Overview**

```
DSA_2040_PRACTICAL_EXAM_AMBACHO_550/
├── Classification and Association Rule Mining/
│   ├── Data/                   # Preprocessed Iris dataset, synthetic transactional data
│   ├── scripts/                # classification_iris.py, mining_iris_basket.py
│  
├── Data_Mining/
│   ├── data/                   # Preprocessed data, cleaned datasets
│   ├── design/                 # Any diagrams or design notes
│   ├── scripts/                # clustering_iris.py
│  
├── Data_Warehousing/
│   ├── data/                   # Raw or synthetic retail data
│   ├── design/                 # schema_diagram.png
│   ├── ETL/                    # etl scripts (etl_retail.py)
│   ├── images/                 # ETL or OLAP result plots
│   ├── OLAP/                   # SQL queries for roll-up, drill-down, slice
│   ├── reports/                # ETL and OLAP analysis
│   └── scripts/                # SQL scripts or additional Python scripts
│
├── K_Mean_Clustering/
│   ├── scripts/                # clustering_iris.py
│   ├── images/                 # elbow_curve.png, cluster_scatter.png
│
├── Report/
│   ├── Data Warehousing and Data Mining Questions.pdf
│   └── Report_Kmean_clustering.md
│
├── Online_Retail_Report.md
├── README.md
└── requirements.txt
```

---

## **Data Warehousing**

* **ETL**: `etl_retail.py` handles extraction, transformation, and load into SQLite (`retail_dw.db`).
* **Schema**: `schema_diagram.png` shows the star schema design. Include in report under *Schema Design*.
## Star Schema
<img width="963" height="673" alt="image" src="https://github.com/user-attachments/assets/f16a6544-fec6-4e04-9512-8e909eb63152" />

I chose the Star Schema because it is simpler and denormalized, which allows for faster query performance in OLAP systems. It reduces the number of joins needed compared to a Snowflake Schema, making it easier for analysts to write and understand queries. This design also improves query execution speed and supports intuitive reporting and visualization.

  
* **OLAP Queries**: Located in `Data_Warehousing/OLAP/`. Visualize query results and save images in `Data_Warehousing/images/`.

---

## **K-Means Clustering**

* **Scripts**: `clustering_iris.py`
* **Dataset**: `Cleaned_iris_data.csv` in `Data_Mining/data/`
* **Visualizations**:

  * `elbow_curve.png` → Optimal K
  * `cluster_scatter.png` → Scatter plots of clusters
* **Analysis**: Discuss cluster quality, misclassifications, and applications. Include visuals in `Report/Report_Kmean_clustering.md`.

---

## **Classification & Association Rule Mining**

* **Classification**:

  * Decision Tree and KNN (k=5) in `scripts/`
  * `tree_visualization.png` → Visualize the Decision Tree

* **Association Rule Mining**:

  * Synthetic transactional data generated in `scripts/`
  * Apriori applied; top 5 rules saved in `rules_top5.png`

* **Analysis**: Compare classifiers, interpret rules, and discuss applications. Include images in the report.

---

## **Report**

* Include all plots and diagrams in `Report/` or as markdown embedded images.
* Sections: Introduction, Methodology, Results, Visualizations, Analysis, Conclusion.

---

## **Requirements**

* Python 3.x
* Packages: `pandas`, `numpy`, `matplotlib`, `seaborn`, `sklearn`, `mlxtend`
* Install via:

```bash
pip install -r requirements.txt
```

---


