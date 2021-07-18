Course Project: Shiny Application and Reproducible Pitch
========================================================
author: FPV
date: 7/17/2021
autosize: true

Assignment
========================================================
This assignment has two parts. First, you will create a Shiny application and deploy it on Rstudio's servers. Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.


You get 5 slides (inclusive of the title slide)  to pitch a your app. You're going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

Here's what you need

5 slides to pitch our idea done in Slidify or Rstudio Presenter
Your presentation pushed to github or Rpubs
A link to your github or Rpubs presentation pasted into the provided text box
Your presentation must satisfy the following

- It must be done in Slidify or Rstudio Presenter
- It must be 5 pages
- It must be hosted on github or Rpubs
- It must contained some embedded R code that gets run when slidifying the document

Dataset
========================================================

VADeaths: Death Rates in Virginia (1940)

## Description
Death rates per 1000 in Virginia in 1940.

## Format
A matrix with 5 rows and 4 columns.

## Details
The death rates are measured per 1000 population per year. They are cross-classified by age group (rows) and population group (columns). The age groups are: 50-54, 55-59, 60-64, 65-69, 70-74 and the population groups are Rural/Male, Rural/Female, Urban/Male and Urban/Female.

This provides a rather nice 3-way analysis of variance example.



```r
library(datasets)
print(VADeaths)
```

```
      Rural Male Rural Female Urban Male Urban Female
50-54       11.7          8.7       15.4          8.4
55-59       18.1         11.7       24.3         13.6
60-64       26.9         20.3       37.0         19.3
65-69       41.0         30.9       54.6         35.1
70-74       66.0         54.3       71.1         50.0
```

Application
========================================================

Here is a screen shot of the application

![plot of chunk unnamed-chunk-2](https://github.com/fvairo/Shiny/blob/main/Capture.JPG)

Summary
========================================================

This application takes as input the type of region (Rural or Urban) and gender to plot a bar graph showing the death rate in Virginia in 1940 per age range. 

The application, ui.R, and Server.R are located at
https://github.com/fvairo/Shiny
