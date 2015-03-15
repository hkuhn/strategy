STRATEGY

GOAL:<br>
The goal of this study is to determine whether there is sentiment value in the Management's Discussion and Analysis section of a 10-k filing report.  My hypothesis is that there will be hidden information in the report than we can use to make smarter investment decisions over the course of one year (t=1). The time to maturity should be varied to see if a certain time frame is more effective than other.  By using Neural Recursive Tensor Networks, we can evaluate this section of the filing and determine sentiment. Given the sentiment of the document, we aim to predict the performance of the company.

DATA:<br>
The data used for this project include SEC 10-k filings (annual) from 100 of the S&P SmallCap 600 index. The data is then deconstructed into the Management's Discussion and Analysis section. 10-k filings are retrieved from the SEC database, EDGAR, which consists of filings from public companies between 1994-2015.  Data is divided into a training set and a test set. Reports are randomly sorted so that sequential bias is reduced (i.e. year-over-year trends will not influence this study).  Each report is associated with the return that it generated over the next year.  
<br>
The following Companies have been randomly selected from the S&P600:
