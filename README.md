STRATEGY

GOAL:<br>
The goal of this study is to determine whether there is sentiment value in the Management's Discussion and Analysis section of a 10-q filing report.  My hypothesis is that there will be hidden information in the report than we can use to make smarter investment decisions over the course of one quarter (t=0.25), which we will refer to as "time to maturity." The time to maturity should be varied to see if a certain time frame is more effective than other.  By using Neural Recursive Tensor Networks, we can evaluate this section of the filing and determine sentiment. Given the sentiment of the document, we aim to predict the performance of the company.

DATA:<br>
The data used for this project include SEC 10-q filings (quarterly) from 100 of the S&P SmallCap 600 index. The data is then deconstructed into the Management's Discussion and Analysis section. 10-q filings are retrieved from the SEC database, EDGAR, which consists of filings from public companies between 1994-2015.  Data is divided into a training set and a test set. Reports are randomly sorted so that sequential bias is reduced (i.e. year-over-year trends will not influence this study).  Each report is associated with the return that it generated over its time to maturity.
<br>
The following Companies have been randomly selected from the S&P600:

<br>
LABELLING DATA:<br>
First, we need to train the RNTN.  In order to do so, we must follow the training instructions laid out in their paper.  We have to label words, phrases, etc based on sentiment in financial context.  This will be done on all of our data in the MD&A.  Once this is done, we will have to label each document with its appropriate return over the time to maturity.

STRUCTURE:<br>
The RNTN will feed document sentiment into simple linear regression to learn a mapping between sentiment and return.  We can try a few other learning algorithms, but it should be fairly straight forward once the RNTN is trained.  <b>I need to come up with some sort of combination model in order to go from a score of 1-10 for each word to a more robust score to summarize the document!</b>
