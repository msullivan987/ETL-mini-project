# **Data Cleanup & Analysis**

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:


## Our Data Sources
  * Data.World - https://data.world/emmahyams/do-the-best-shows-on-netflix-pass-the-bechdel-test/workspace/project-summary?agentid=emmahyams&datasetid=do-the-best-shows-on-netflix-pass-the-bechdel-test
    * Our first dataset was a csv of movies available on Netflix as of 2013 including which included information on whether or not they passed the "Bechdel Test". From wikipedia, the Bechdel test: 
    >is a measure of the representation of women in fiction. It asks whether a work features at least two women who talk to each other about something other than a man. The requirement that the two women must be named is sometimes added.
    
    * The csv had several cleaning tasks that needed to be performed including replacing unusual characters that were the remnants of converting between different file types. There were several extraneous columns that wouldn't be helpful for our particular task and these were filtered out. We were relatively lucky that our datasets did not need an extraordinary amount of cleaning.
  
  
## Our Database
  * We chose to use PostgreSQL for our database due to our own familiarity and comfort with it as well as the nature of the data itself. Both our datasets were relatively small and contained in very regular rows and columns. We were also interested in joining our datasets on the movie titles which would be quite easy to do with SQL.
  
  * 
    







