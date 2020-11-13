# **Data Cleanup & Analysis**

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:


## Our Data Sources
  * Data.World - https://data.world/emmahyams/do-the-best-shows-on-netflix-pass-the-bechdel-test/workspace/project-summary?agentid=emmahyams&datasetid=do-the-best-shows-on-netflix-pass-the-bechdel-test
    * Our first dataset was a csv of movies available on Netflix as of 2013 including which included information on whether or not they passed the "Bechdel Test". From wikipedia, the Bechdel test: 
    >is a measure of the representation of women in fiction. It asks whether a work features at least two women who talk to each other about something other than a man. The requirement that the two women must be named is sometimes added.
    
    * The csv had several cleaning tasks that needed to be performed including replacing unusual characters that were the remnants of converting between different file types. There were several extraneous columns that wouldn't be helpful for our particular task and these were filtered out. We were relatively lucky that our datasets did not need an extraordinary amount of cleaning.
    
  * Kaggle - https://www.kaggle.com/shivamb/netflix-shows
   * Our second dataset is an up-to-date csv file of all Netflix TV shows and movies available around the world. The csv is updated every month.
   * Our database would only concern movies available in the US. This was a very straightforward cleaning task which could be easily accomplished in Excel.
   * We wanted to pare down the dataset to only look at netflix id, title, rating, and release year. 
   * Both datasets required us to use .apply() in order to convert titles in both csvs to lowercase. This was done to ensure any capitalisation differences did not interfere with joins conducted through SQL.
  
  
## Our Database
  * We chose to use PostgreSQL for our database due to our own familiarity and comfort with it as well as the nature of the data itself. Both our datasets were relatively small and contained in very regular rows and columns. We were also interested in joining our datasets on the movie titles which would be quite easy to do with SQL.
  
  * The Netflix data was easily housed within a single table. The columns were not transitively dependent so we did not feel it necessary to break them into separate tables.
  
  * Three tables were created for our Bechdel test data. The first test looks only at the imdb id, titles of the films, and whether or not the films passed the Bechdel test. The second and third datasets are both related to the budget of the film. The first of these shows original film budgets, domestic gross revenue, and international gross revenue. The second of these budget tables shows these same figures but adjusted to inflation rates up to 2013.
  
  * We chose not to perform an inner join on the two datasets in order to filter out films that were not present in both examples. Because the Bechdel dataset is relevant to films on Netflix in 2013, we thought it would be interesting to have available the option to see which films have been removed and which have been added. It would be an interesting analysis, for example, to see whether or not films the passed the Bechdel test were more likely to have been removed from Netflix.
    







