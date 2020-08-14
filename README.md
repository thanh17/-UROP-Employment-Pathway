# UROP-Employment-Pathway

MIT J-WEL project on employment pathways of the future.

### Data

All data from the project was stored using MySQL. Data sources were drawn from O\*NET and can be downloaded in the zip [file](https://github.com/thanhn1756/-UROP-Employment-Pathway/blob/master/db_24_3_mysql.zip.).


### Analysis

Analysis was done using [Jupyter Notebook](https://github.com/thanhn1756/-UROP-Employment-Pathway/tree/master/Python%20notebooks). 

#### Notebook Contents

Demographic data: [AgesandWages.ipynb](https://github.com/thanhn1756/-UROP-Employment-Pathway/blob/master/Python%20notebooks/Ages%20and%20Wages.ipynb)

Career Changer Matrix Modifications: [CareerChangerReplication.ipynb](https://github.com/thanhn1756/-UROP-Employment-Pathway/blob/master/Python%20notebooks/Career%20Changer%20Replication.ipynb)

Comparison of Skills: [SkillTransitions.ipynb](https://github.com/thanhn1756/-UROP-Employment-Pathway/blob/master/Python%20notebooks/Skill%20Transitions.ipynb)

Other Notebooks: Random stuff and descriptive statistics are contained in other Notebooks...feel free to poke around, I guess. 

#### Packages used:

[Pandas](https://pandas.pydata.org/pandas-docs/stable/index.html): Pandas Dataframe objects were used to manipulate data for visualization and analysis  

[NetworkX](https://networkx.github.io/): NetworkX was used to build occupation paths using data from O\*NET's [Career Changer Matrix](https://www.onetcenter.org/dictionary/24.3/mysql/career_changers_matrix.html) as well as to implement [Dijkstra' shortest path algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm).  

#### Main Visualization tools:

The main visualization tools used were [Plotly](https://plotly.com/) and [matplotlib](https://matplotlib.org/contents.html). In most cases, Plotly was prefered for its interactivity with data. However, matplotlib was used when Plotly's documentation was actually too trash to use or quick anaylsis was favored over interactivity.


### Questions/Comments/Concerns:

(Yes, I know that some of the code are not the cleanest but it works for the time being)

Email: thanh_n@mit.edu


