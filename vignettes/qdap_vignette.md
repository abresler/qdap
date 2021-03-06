<!--
%\VignetteEngine{knitr}
%\VignetteIndexEntry{A Markdown Vignette with knitr}
-->



# qdap Package Vignette
# Tyler Rinker

qdap (<a href="http://github.com/trinker/qdap">Rinker, 2013</a>) is an R package designed to assist in quantitative discourse analysis. The package stands as a bridge between qualitative transcripts of dialogue and statistical analysis and visualization.  qdap was born out of a frustration with current discourse analysis programs. Packaged programs are a closed system, meaning the researcher using the method has little, if any, influence on the program applied to her data.

R already has thousands of excellent packages for statistics and visualization. qdap is designed to stand as a bridge between the qualitative discourse of a transcript and the computational power and freedom that R offers. As qdap returns the power to the researcher it will also allow the researcher to be more efficient and thus effective and productive in data analysis.  The qdap package provides researchers with the tools to analyze data and more importantly is a dynamic system governed by the data, shaped by theory, and continuously refined by the field.

...if you can dream up an analysis then qdap and R can help get you there.

<div style="width:367.5px;margin:auto;">
    <p><img src="https://dl.dropbox.com/u/61803503/qdap_logo.png" width="350" height="250"></p>
</div>


The following vignette is a loose chronological road map for utilizing the tools provided by qdap.  

<hr>
<h3 id="toc">Select from sections below:</h3>

<div style="float: left; width: 50%;">
<ul>
<div>1.  <a href="#project">Starting a New Project</a>    </div> 
<div>2.  <a href="#import_export">Import/Export Discourse Data</a>    </div> 
<div>3.  <a href="#viewing">View the Data</a>    </div> 
<div>4.  <a href="#tools">Generic qdap Tools</a>    </div> 
<div>5.  <a href="#cleaning">Cleaning/Preparing the Data</a>    </div> 
<div>6.  <a href="#reshaping">Reshaping the Data</a>    </div> 
<div>7.  <a href="#word">Extract/Analyze Words</a>    </div> 
<div>8.  <a href="#coding">Qualitative Coding System</a>    </div> 
<div>9.  <a href="#counts">Word Counts and Descriptive Statistics</a>    </div> 
<div>10.  <a href="#measures">Word Measures and Scoring</a>    </div> 
<div>11.  <a href="#visualization">Visualizing Discourse Data</a>    </div> 
<div>12.  <a href="#id">ID Sentences</a>    </div> 
<div>13.  <a href="#data">Data Sets</a>    </div> 
<div>14.  <a href="#dict">Dictionaries and Word Lists</a>    </div> 
<div>15.  <a href="#install">Installation Issues</a>    </div> 


</ul>
</div>
<div style="float: right; width: 50%;">
<ul>
<div><b>Symbol Conventions:</b></div>  
<div><font size="5" color="orange">&diams;</font> = Example (R code)    </div> 
<div><b><font size="5" color="firebrick">[YT]</font></b> = Video Demo (click to watch)    </div> 
</ul>
</div>
<br style="clear:both;"/>




<h3 id="project">Starting a New Project <a href="http://youtu.be/u8AJiyMffmc" target="_blank" style="text-decoration: none"><b><font size="5" color="#B22222">[YT]</font></b></a>
</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/new_project.html" target="_blank">
    <input type="submit" value="new_project"> - Project Template
</form>
</div>


The function <a href="http://trinker.github.io/qdap_dev/new_project.html" target="_blank"><code>new_project</code></a> is designed to generate project template of multiple nested directories that organize and guide the researcher through a qualitative study, from data collection to analysis and report/presentation generation.  This workflow framework will enable the researcher to be better organized and more efficient in all stages of the research process.  <a href="http://trinker.github.io/qdap_dev/new_project.html" target="_blank"><code>new_project</code></a> utilizes the <a href="http://cran.r-project.org/web/packages/reports/reports.pdf" target="_blank">reports package</a> (<a href="http://github.com/trinker/reports">Rinker, 2013b</a>) 

Please see the following links for PDF descriptions of the contents of the <a href="http://trinker.github.io/qdap_dev/new_project.html" target="_blank"><code>new_project</code></a> and the reports directory. </br></br>

<div style="text-align: center;">
<table width="30%" style="text-align: center;margin: 0px auto;">
<colgroup>
<col width="110" />
<col width="110" />
</colgroup>
<tr>
<tr style="text-align: center;">
<td style="text-align: center;">Project<br> Workflow</td>
<td style="text-align: center;">Report<br> Workflow</td>
</tr>
<tr>
<td style="text-align: center; onClick="document.location.href='https://copy.com/4VekuLlUqix0CfSw/PROJECT_WORKFLOW_GUIDE.pdf?download=1';">
<a href="https://copy.com/4VekuLlUqix0CfSw/PROJECT_WORKFLOW_GUIDE.pdf?download=1';"><img src="http://drupal.org/files/project-images/Download%20Views%20PDF_2.png" width="50" height="75"><br></a>
<a href="https://copy.com/4VekuLlUqix0CfSw/PROJECT_WORKFLOW_GUIDE.pdf?download=1" target="_blank">click here</a>
<td style="text-align: center; onClick="https://copy.com/csVvdAm2vikGlkIU/REPORT_WORKFLOW_GUIDE.pdf?download=1';">
<p><a href="https://copy.com/csVvdAm2vikGlkIU/REPORT_WORKFLOW_GUIDE.pdf?download=1';"  target="_blank"><img src="http://drupal.org/files/project-images/Download%20Views%20PDF_2.png" width="50" height="75"><br></a>
<a href="https://copy.com/csVvdAm2vikGlkIU/REPORT_WORKFLOW_GUIDE.pdf?download=1" target="_blank">click here</a></p></td>
</tr>
</table>
</div>

<h4 id="extra">extra_functions <a href="http://youtu.be/yuFyz7IW0Us" target="_blank" style="text-decoration: none"><b><font size="5" color="#B22222">[YT]</font></b></a>
</h4>    
The <a href="http://trinker.github.io/qdap_dev/new_project.html" target="_blank"><code>new_project</code></a> template is designed to be utilized with <a href="http://www.rstudio.com/ide/download/" target="_blank">RStudio</a>.  Upon clicking the `xxx.Rproj` file the template will be loaded into RStudio.  The .Rprofile script will be sourced upon start up, allowing the user to automatically load packages, functions, etc. related to the project.  The file `extra_functions.R` is sourced, loading custom functions.  Already included are two functions, `email` and `todo`, used to generate project member emails and track project tasks.  This auto sourcing greatly enhances efficiency in workflow.


<h3 id="import_export">Import/Export Discourse Data</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/condense.html" target="_blank">
    <input type="submit" value="condense"> - <a href="#mcsv">Condense Dataframe Columns</a>
</form>

<form action="http://trinker.github.io/qdap_dev/dir_map.html" target="_blank">
    <input type="submit" value="dir_map"> - <a href="#readin">Map Transcript Files from a Directory to a Script</a>
</form>

<form action="http://trinker.github.io/qdap_dev/mcsv_r.html" target="_blank">
    <input type="submit" value="mcsv_r"><input type="submit" value="mcsv_w"> - <a href="#mcsv">Read/Write Multiple csv Files at a Time</a>
</form>

<form action="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank">
    <input type="submit" value="read.transcript"> - <a href="#readin">Read Transcripts Into R</a>
</form>
</div>

<h4 id="readin">Reading In Transcript Data <a href="http://youtu.be/UxgOScggLBg" target="_blank" style="text-decoration: none"><b><font size="5" color="#B22222">[YT]</font></b></a>
</h4>    

This subsection covers how to read in transcript data.  Generally the researcher will have data stored as a .docx (Microsoft Word or Open/Libre Office) or .xlsx/.csv (spreadsheet format).  It is of great importance that the researcher manually writes/parses their transcripts to avoid potential analysis problems later.  All sentences should contain appropriate qdap punctuation (declarative = ., interrogative = ?, exclamatory = !, interupted = | or <a href="http://trinker.github.io/qdap_dev/imperative.html" target="_blank"><code>imperative</code></a> = *., *?, *!, *|).  Additionally, if a sentence contains an endmark/punctuation it should have accompanying text/dialogue.  Two functions are useful for reading in data, <a href="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank"><code>read.transcript</code></a> and <a href="http://trinker.github.io/qdap_dev/dir_map.html" target="_blank"><code>dir_map</code></a>.  <a href="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank"><code>read.transcript</code></a> detects file type (.docx/.csv/.xlsx) and reads in a single transcipt whereas <a href="http://trinker.github.io/qdap_dev/dir_map.html" target="_blank"><code>dir_map</code></a> generates code that utilizes <a href="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank"><code>read.transcript</code></a> for each of the multiple transcripts in a single directory.  Note that <a href="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank"><code>read.transcript</code></a> expects a two column formatted transcript (usually with person on the left and dialogue on the right).

Five arguments are of particular importance to read.transcript: 

<table>
<tr><td><code>file</code></td>
<td><p>The name of the file which the data are to be
read from. Each row of the table appears as one line of
the file. If it does not contain an absolute path, the
file name is relative to the current working directory,
<code>getwd()</code>.</p></td></tr>
<tr><td><code>col.names</code></td>
<td>
<p>A character vector specifying the column
names of the transcript columns.</p>
</td></tr>
<tr><td><code>header</code></td>
<td>
<p>logical.  If <code>TRUE</code> the file contains
the names of the variables as its first line.</p>
</td></tr>
<tr><td><code>sep</code></td>
<td>
<p>The field separator character. Values on each
line of the file are separated by this character.  The
default of <code>NULL</code> instructs
<code><a href="read.transcript.html">read.transcript</a></code> to use a separator
suitable for the file type being read in.</p>
</td></tr>
<tr><td><code>skip</code></td>
<td>
<p>Integer; the number of lines of the data file
to skip before beginning to read data.</p>
</td></tr>
</table>

Often transcripts contain extraneous material at the top and the argument <font face="courier">skip = ?</font> must be used to skip these extra lines.  Some sort of unique separator must also be used to separate the person column from the text column.  By defualt <font face="courier">sep = ":"</font> is assumed.  If your transcripts do no contain a separator one must be inserted manually.  Also note that the researcher may want to prepare the transcripts with brackets to denote non spoken annotations as well dialogue that is read rather than spoken.  For more on bracket parsing see <a href="#bracket">Bracket/General Chunk Extraction</a>.

<div class="middleDiv">
<b><font size="4" color="red">Note: It is important that all sentences contain valid qdap punctuation (<font face="courier">.</font>, <font face="courier">?</font>, <font face="courier">!</font>, <font face="courier">|</font>) in your transcripts. Many qdap functions are dependant upon this assumption.</font></b>
</div>

<font size="5" color="orange">&diams;</font> **Reading In Data**- *read.transcript* <font size="5" color="orange">&diams;</font>
<pre><code class="r">## Location of sample transcripts from the qdap package
(doc1 <- system.file("extdata/transcripts/trans1.docx", package = "qdap"))
(doc2 <- system.file("extdata/transcripts/trans2.docx", package = "qdap"))
(doc3 <- system.file("extdata/transcripts/trans3.docx", package = "qdap"))
(doc4 <- system.file("extdata/transcripts/trans4.xlsx", package = "qdap"))</code></pre>

<pre><code class="r">dat1 <- read.transcript(doc1)
truncdf(dat1, 40)</code></pre>

<pre><code>##                  X1                                       X2
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4     [Cross Talk 3                                      00]
## 5         Teacher 4 Let's read this terrific book together. </code></pre>


<pre><code class="r">dat2 <- read.transcript(doc1, col.names = c("person", "dialogue"))
truncdf(dat2, 40)</code></pre>

<pre><code>##              person                                 dialogue
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4     [Cross Talk 3                                      00]
## 5         Teacher 4 Let's read this terrific book together. </code></pre>

<pre><code class="r">dat2b <- rm_row(dat2, "person", "[C") #remove bracket row
truncdf(dat2b, 40)</code></pre>

<pre><code>##              person                                 dialogue
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4         Teacher 4 Let's read this terrific book together. </code></pre>


<pre><code class="r">## Be aware of the need to `skip` non transcript lines
## Incorrect read; Needed to use `skip`
read.transcript(doc2)</code></pre>

<pre><code>Error in data.frame(X1 = speaker, X2 = pvalues, stringsAsFactors = FALSE) : 
  arguments imply differing number of rows: 7, 8</code></pre>


<pre><code class="r">## Correct: Used `skip`
dat3 <- read.transcript(doc2, skip = 1)
truncdf(dat3, 40)</code></pre>

<pre><code>##                  X1                                       X2
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4     [Cross Talk 3                                      00]
## 5         Teacher 4 Let's read this terrific book together. 
</code></pre>

<pre><code class="r">## Be Aware of the `sep` Used
## Incorrect Read; Wrong `sep` Provided (used defualt `:`)
read.transcript(doc3, skip = 1)</code></pre>

<pre><code>##Dialogue and Person Columns Mixed Inappropriately
## X1
## 1 [Cross Talk 3
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              X2
## 1 Teacher 4-Students it's time to learn. [Student discussion; unintelligible] Multiple Students-Yes teacher we're ready to learn. 00] Teacher 4-Let's read this terrific book together. It's called Moo Baa La La La and what was I going to ... Oh yes The story is by Sandra Boynton. A cow says Moo. A Sheep says Baa. Three singing pigs say LA LA LA! "No, no!" you say, that isn't right. The pigs say oink all day and night. Rhinoceroses snort and snuff. And little dogs go ruff ruff ruff! Some other dogs go bow wow wow! And cats and kittens say Meow! Quack! Says the duck. A horse says neigh. It's quiet now. What do you say?
</code></pre>


<pre><code class="r">## Correct `sep` Used
dat4 <- read.transcript(doc3, sep = "-", skip = 1)
truncdf(dat4, 40)</code></pre>

<pre><code>##                  X1                                       X2
## 1         Teacher 4 Students it's time to learn. [Student di
## 2 Multiple Students Yes teacher we're ready to learn. [Cross
## 3         Teacher 4 Let's read this terrific book together. </code></pre>


<pre><code class="r">## Read In .xlsx Data
dat5 <- read.transcript(doc4)
truncdf(dat5, 40)</code></pre>

<pre><code>##                   V1                                       V2
## 1      Researcher 2:                         October 7, 1892.
## 2         Teacher 4:             Students it's time to learn.
## 3               <NA>                                     <NA>
## 4 Multiple Students:        Yes teacher we're ready to learn.
## 5               <NA>                                     <NA>
## 6         Teacher 4: Let's read this terrific book together. 
</code></pre>

<pre><code class="r">## Reading In Text
trans <- "sam: Computer is fun. Not too fun.
greg: No it's not, it's dumb.
teacher: What should we do?
sam: You liar, it stinks!"

read.transcript(text=trans)</code></pre>

<pre><code>##        V1                            V2
## 1     sam Computer is fun. Not too fun.
## 2    greg         No its not, its dumb.
## 3 teacher            What should we do?
## 4     sam          You liar, it stinks!
</code></pre>

The <a href="http://trinker.github.io/qdap_dev/dir_map.html" target="_blank"><code>dir_map</code></a> function enables the researcher to produce multiple lines of code, one line with <a href="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank"><code>read.transcript</code></a> for each file in a directory, which is then optionally copied to the clipboard for easy insertion into a script.  Note that setting the argument <font face="courier">use.path = FALSE</font> may allow the code to be more portable in that a static path is not suppplied the the <a href="http://trinker.github.io/qdap_dev/read.transcript.html" target="_blank"><code>read.transcript</code></a> scripts.

<font size="5" color="orange">&diams;</font> **Reading In Data**- *dir_map* <font size="5" color="orange">&diams;</font>

<pre><code class="r">(DIR <- system.file("extdata/transcripts", package = "qdap"))
dir_map(DIR)</code></pre>

...will produce...

<pre><code>dat1 <- read.transcript('~/extdata/transcripts/trans1.docx', col.names = c('person', 'dialogue'), skip = 0)
dat2 <- read.transcript('~/extdata/transcripts/trans2.docx', col.names = c('person', 'dialogue'), skip = 0)
dat3 <- read.transcript('~/extdata/transcripts/trans3.docx', col.names = c('person', 'dialogue'), skip = 0)
dat4 <- read.transcript('~/extdata/transcripts/trans4.xlsx', col.names = c('person', 'dialogue'), skip = 0)</code></pre>


<h4 id="mcsv">Reading/Writing Multiple .csv Files <a href="http://youtu.be/aeZKJGEfD7U" target="_blank" style="text-decoration: none"><b><font size="5" color="#B22222">[YT]</font></b></a>
</h4>    

The <font face="courier">mcsv_x</font> family of functions are utilized to read (<a href="http://trinker.github.io/qdap_dev/mcsv_r.html" target="_blank"><code>mcsv_r</code></a>) and write (<a href="http://trinker.github.io/qdap_dev/mcsv_w.html" target="_blank"><code>mcsv_w</code></a>) multiple csv files at once.  <a href="http://trinker.github.io/qdap_dev/mcsv_w.html" target="_blank"><code>mcsv_w</code></a> takes an arbitrary number of dataframes and outputs them to the supplied directory( <font face="courier">dir = ?</font>).  An attempt will be made to output the dataframes from qdap functions that output lists of dataframes.  Note that dataframes that contain columns that are lists must be condensed prior to writing with other R dataframe writing functions (e.g., `write.csv`) using the <a href="http://trinker.github.io/qdap_dev/condense.html" target="_blank"><code>condense</code></a> function.  By default <a href="http://trinker.github.io/qdap_dev/mcsv_w.html" target="_blank"><code>mcsv_w</code></a> attempts to utilize <a href="http://trinker.github.io/qdap_dev/condense.html" target="_blank"><code>condense</code></a>.

The <a href="http://trinker.github.io/qdap_dev/mcsv_r.html" target="_blank"><code>mcsv_r</code></a> function reads multiple files at once and then assigns then dataframes to identically named objects (minus the file extension) in the global environment.  Additionally, all of the dataframes that are read in are also assigned to an inclusive list (name `L1` by defualt).

<font size="5" color="orange">&diams;</font> **Reading and Writing Multiple csvs** <font size="5" color="orange">&diams;</font>


```r
## Make new minimal data sets
mtcarsb <- mtcars[1:5, ]; CO2b <- CO2[1:5, ]

## Write multiple csvs and assign the directory path to `a`
a <- mcsv_w(mtcarsb, CO2b, dir="foo")

## New data sets gone from .GlobalEnv
rm("mtcarsb", "CO2b")  

## View the files in `a` and assign to `nms`
(nms <- dir(a))

## Read in and notice the dataframes have been assigned in .GlobalEnv
mcsv_r(file.path(a, nms))
mtcarsb; CO2b
L1

## The dataframe anmes and list of dataframe can be altered
mcsv_r(file.path(a, nms), a.name = paste0("bot", 1:2), l.name = "bots_stink")
bot1; bot2
bots_stink

## Clean up
delete("foo")
```


<font size="5" color="orange">&diams;</font> **Writing Lists of Dataframes to csvs** <font size="5" color="orange">&diams;</font>

```r
## poldat and termco produce lists of dataframes
poldat <- with(DATA, polarity(state, person))
term <- c("the ", "she", " wh")
termdat <- with(raj.act.1,  termco(dialogue, person, term))

## View the lists of dataframes
str(poldat); str(termdat)

## Write the lists of dataframes to csv
mcsv_w(poldat, termdat, mtcars, CO2, dir="foo2")

## Clean up
delete("foo2")
```


<h3 id="viewing">View the Data</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/htruncdf.html" target="_blank">
    <input type="submit" value="truncdf"><input type="submit" value="htruncdf"><input type="submit" value="ltruncdf"><input type="submit" value="qview"> - <a href="#trunc">Truncated Dataframe Viewing</a>
</form>

<form action="http://trinker.github.io/qdap_dev/left.just.html" target="_blank">
    <input type="submit" value="left.just"><input type="submit" value="right.just"> - <a href="#just">Text Justification</a>
</form>

<form action="http://trinker.github.io/qdap_dev/Search.html" target="_blank">
    <input type="submit" value="Search"> - <a href="#search">Search Columns of a Dataframe</a>
</form>
</div>

The nature of dialogue data makes it large and cumbersome to view in R.  This section explores qdap tools designed for more comfortable viewing of R dialogue oriented text dataframes.  

<h4 id="trunc">Truncated Dataframe Viewing</h4> 

The <a href="http://trinker.github.io/qdap_dev/htruncdf.html" target="_blank"><code>_truncdf</code></a> family of functions (trunc + dataframe = <a href="http://trinker.github.io/qdap_dev/truncdf.html" target="_blank"><code>truncdf</code></a>) are designed to truncate the width of columns and number of rows in dataframes and lists of dataframes.  The <font face="courier">l</font> and <font face="courier">h</font> in front of <font face="courier">trunc</font> stands for <b><font color="blue">l</font>ist</b> and <b><font color="blue">h</font>ead</b> and are extensions of <a href="http://trinker.github.io/qdap_dev/truncdf.html" target="_blank"><code>truncdf</code></a>.  <a href="http://trinker.github.io/qdap_dev/qview.html" target="_blank"><code>qview</code></a> is a wrapper for <a href="http://trinker.github.io/qdap_dev/htruncdf.html" target="_blank"><code>htruncdf</code></a> that also displays number of rows,columns, and the dataframe name.


<font size="5" color="orange">&diams;</font> **Truncated Data Viewing** <font size="5" color="orange">&diams;</font>


```r
truncdf(raj[1:10, ])
```

```
##     person   dialogue act
## 1  Sampson Gregory, o   1
## 2  Gregory No, for th   1
## 3  Sampson I mean, an   1
## 4  Gregory Ay, while    1
## 5  Sampson I strike q   1
## 6  Gregory But thou a   1
## 7  Sampson A dog of t   1
## 8  Gregory To move is   1
## 9  Sampson A dog of t   1
## 10 Gregory That shows   1
```

```r
truncdf(raj[1:10, ], 40)
```

```
##     person                                 dialogue act
## 1  Sampson Gregory, o my word, we'll not carry coal   1
## 2  Gregory      No, for then we should be colliers.   1
## 3  Sampson  I mean, an we be in choler, we'll draw.   1
## 4  Gregory Ay, while you live, draw your neck out o   1
## 5  Sampson           I strike quickly, being moved.   1
## 6  Gregory But thou art not quickly moved to strike   1
## 7  Sampson A dog of the house of Montague moves me.   1
## 8  Gregory To move is to stir; and to be valiant is   1
## 9  Sampson A dog of that house shall move me to sta   1
## 10 Gregory That shows thee a weak slave; for the we   1
```

```r
htruncdf(raj)
```

```
##     person   dialogue act
## 1  Sampson Gregory, o   1
## 2  Gregory No, for th   1
## 3  Sampson I mean, an   1
## 4  Gregory Ay, while    1
## 5  Sampson I strike q   1
## 6  Gregory But thou a   1
## 7  Sampson A dog of t   1
## 8  Gregory To move is   1
## 9  Sampson A dog of t   1
## 10 Gregory That shows   1
```

```r
htruncdf(raj, 20)
```

```
##     person   dialogue act
## 1  Sampson Gregory, o   1
## 2  Gregory No, for th   1
## 3  Sampson I mean, an   1
## 4  Gregory Ay, while    1
## 5  Sampson I strike q   1
## 6  Gregory But thou a   1
## 7  Sampson A dog of t   1
## 8  Gregory To move is   1
## 9  Sampson A dog of t   1
## 10 Gregory That shows   1
## 11 Sampson True; and    1
## 12 Gregory The quarre   1
## 13 Sampson 'Tis all o   1
## 14 Gregory The heads    1
## 15 Sampson Ay, the he   1
## 16 Gregory They must    1
## 17 Sampson Me they sh   1
## 18 Gregory 'Tis well    1
## 19 Sampson My naked w   1
## 20 Gregory How! turn    1
```

```r
htruncdf(raj, ,20)
```

```
##     person             dialogue act
## 1  Sampson Gregory, o my word,    1
## 2  Gregory No, for then we shou   1
## 3  Sampson I mean, an we be in    1
## 4  Gregory Ay, while you live,    1
## 5  Sampson I strike quickly, be   1
## 6  Gregory But thou art not qui   1
## 7  Sampson A dog of the house o   1
## 8  Gregory To move is to stir;    1
## 9  Sampson A dog of that house    1
## 10 Gregory That shows thee a we   1
```

```r
ltruncdf(rajPOS, width = 4)
```

```
## $text
##   data
## 1 Greg
## 2 No, 
## 3 I me
## 4 Ay, 
## 5 I st
## 6 But 
## 
## $POStagged
##   POSt POSt word
## 1 greg c("N    8
## 2 no/D c("D    7
## 3 i/PR c("P    9
## 4 ay/N c("N   11
## 5 i/VB c("V    5
## 6 but/ c("C    8
## 
## $POSprop
##   wrd. prop prop prop prop prop prop prop prop prop prop prop prop prop
## 1    8    0    0    0    0    0    0    0 0.12    0    0    0    0 0.25
## 2    7    0    0    0    0 0.14    0    0 0.14    0    0    0 0.14    0
## 3    9    0    0    0    0 0.11    0    0 0.11    0    0    0    0 0.33
## 4   11    0    0    0    0 0.09    0    0 0.27    0    0    0    0 0.27
## 5    5    0    0    0    0    0    0    0    0    0    0    0    0  0.2
## 6    8    0    0 0.12    0 0.12    0    0    0    0    0    0    0 0.12
##   prop prop prop prop prop prop prop prop prop prop prop prop prop prop
## 1    0    0 0.12    0    0    0 0.12 0.12    0    0    0    0    0 0.12
## 2    0    0 0.14    0    0 0.14    0 0.14    0    0    0    0    0 0.14
## 3    0    0    0    0    0 0.22    0    0    0    0    0    0    0 0.11
## 4    0    0    0    0    0 0.09 0.09    0    0    0    0    0    0 0.09
## 5    0    0    0    0    0    0    0  0.2    0    0    0    0    0    0
## 6    0    0    0    0    0    0    0 0.25    0    0    0 0.12    0 0.12
##   prop prop prop prop prop prop prop prop prop
## 1 0.12    0    0    0    0    0    0    0    0
## 2    0    0    0    0    0    0    0    0    0
## 3    0    0    0 0.11    0    0    0    0    0
## 4    0    0    0 0.09    0    0    0    0    0
## 5    0  0.2  0.4    0    0    0    0    0    0
## 6 0.12    0    0    0    0    0    0    0    0
## 
## $POSfreq
##   wrd. , . CC CD DT EX FW IN JJ JJR JJS MD NN NNP NNPS NNS PDT POS PRP
## 1    8 0 0  0  0  0  0  0  1  0   0   0  0  2   0    0   1   0   0   0
## 2    7 0 0  0  0  1  0  0  1  0   0   0  1  0   0    0   1   0   0   1
## 3    9 0 0  0  0  1  0  0  1  0   0   0  0  3   0    0   0   0   0   2
## 4   11 0 0  0  0  1  0  0  3  0   0   0  0  3   0    0   0   0   0   1
## 5    5 0 0  0  0  0  0  0  0  0   0   0  0  1   0    0   0   0   0   0
## 6    8 0 0  1  0  1  0  0  0  0   0   0  0  1   0    0   0   0   0   0
##   PRP$ RB RBR RBS RP TO UH VB VBD VBG VBN VBP VBZ WDT WP WP$ WRB
## 1    1  1   0   0  0  0  0  1   1   0   0   0   0   0  0   0   0
## 2    0  1   0   0  0  0  0  1   0   0   0   0   0   0  0   0   0
## 3    0  0   0   0  0  0  0  1   0   0   0   1   0   0  0   0   0
## 4    1  0   0   0  0  0  0  1   0   0   0   1   0   0  0   0   0
## 5    0  1   0   0  0  0  0  0   0   1   2   0   0   0  0   0   0
## 6    0  2   0   0  0  1  0  1   1   0   0   0   0   0  0   0   0
```


<pre><code class="r">qview(raj)</code></pre>

<pre><code>## ========================================================================
## nrow =  840           ncol =  3             raj
## ========================================================================
##     person   dialogue act
## 1  Sampson Gregory, o   1
## 2  Gregory No, for th   1
## 3  Sampson I mean, an   1
## 4  Gregory Ay, while    1
## 5  Sampson I strike q   1
## 6  Gregory But thou a   1
## 7  Sampson A dog of t   1
## 8  Gregory To move is   1
## 9  Sampson A dog of t   1
## 10 Gregory That shows   1</code></pre>

<pre><code class="r">qview(CO2)</code></pre>

<pre><code>## ========================================================================
## nrow =  84           ncol =  5             CO2
## ========================================================================
##    Plant   Type  Treatment conc uptake
## 1    Qn1 Quebec nonchilled   95     16
## 2    Qn1 Quebec nonchilled  175   30.4
## 3    Qn1 Quebec nonchilled  250   34.8
## 4    Qn1 Quebec nonchilled  350   37.2
## 5    Qn1 Quebec nonchilled  500   35.3
## 6    Qn1 Quebec nonchilled  675   39.2
## 7    Qn1 Quebec nonchilled 1000   39.7
## 8    Qn2 Quebec nonchilled   95   13.6
## 9    Qn2 Quebec nonchilled  175   27.3
## 10   Qn2 Quebec nonchilled  250   37.1</code></pre>


<h4 id="just">Text Justification</h4> 

By defualt text data (character vectors) are displayed as right justified in R.  This can be difficult and unnatural to read, particularly as the length of the sentences increase.  The <a href="http://trinker.github.io/qdap_dev/left.just.html" target="_blank"><code>left.just</code></a> function creates a more natural left justification of text.  Note that <a href="http://trinker.github.io/qdap_dev/left.just.html" target="_blank"><code>left.just</code></a> inserts spaces to achieve the justification. This could interfere with analysis and therefore the output from <a href="http://trinker.github.io/qdap_dev/left.just.html" target="_blank"><code>left.just</code></a> should only be used for visualization purposes, not analysis.

<font size="5" color="orange">&diams;</font> **Justified Data Viewing** <font size="5" color="orange">&diams;</font>    


```r
## The unnatural state of R text data
DATA
```

```
##        person sex adult                                 state code
## 1         sam   m     0         Computer is fun. Not too fun.   K1
## 2        greg   m     0               No it's not, it's dumb.   K2
## 3     teacher   m     1                    What should we do?   K3
## 4         sam   m     0                  You liar, it stinks!   K4
## 5        greg   m     0               I am telling the truth!   K5
## 6       sally   f     0                How can we be certain?   K6
## 7        greg   m     0                      There is no way.   K7
## 8         sam   m     0                       I distrust you.   K8
## 9       sally   f     0           What are you talking about?   K9
## 10 researcher   f     1         Shall we move on?  Good then.  K10
## 11       greg   m     0 I'm hungry.  Let's eat.  You already?  K11
```

```r
## left jsut to the rescue
left.just(DATA)
```

```
##    person     sex adult state                                 code
## 1  sam        m   0     Computer is fun. Not too fun.         K1  
## 2  greg       m   0     No it's not, it's dumb.               K2  
## 3  teacher    m   1     What should we do?                    K3  
## 4  sam        m   0     You liar, it stinks!                  K4  
## 5  greg       m   0     I am telling the truth!               K5  
## 6  sally      f   0     How can we be certain?                K6  
## 7  greg       m   0     There is no way.                      K7  
## 8  sam        m   0     I distrust you.                       K8  
## 9  sally      f   0     What are you talking about?           K9  
## 10 researcher f   1     Shall we move on?  Good then.         K10 
## 11 greg       m   0     I'm hungry.  Let's eat.  You already? K11
```

```r
## Left just select column(s)
left.just(DATA, c("sex", "state"))
```

```
##        person sex adult state                                 code
## 1         sam m       0 Computer is fun. Not too fun.           K1
## 2        greg m       0 No it's not, it's dumb.                 K2
## 3     teacher m       1 What should we do?                      K3
## 4         sam m       0 You liar, it stinks!                    K4
## 5        greg m       0 I am telling the truth!                 K5
## 6       sally f       0 How can we be certain?                  K6
## 7        greg m       0 There is no way.                        K7
## 8         sam m       0 I distrust you.                         K8
## 9       sally f       0 What are you talking about?             K9
## 10 researcher f       1 Shall we move on?  Good then.          K10
## 11       greg m       0 I'm hungry.  Let's eat.  You already?  K11
```

```r
left.just(CO2[1:15,])
```

```
##    Plant Type   Treatment  conc uptake
## 1  Qn1   Quebec nonchilled 95   16    
## 2  Qn1   Quebec nonchilled 175  30.4  
## 3  Qn1   Quebec nonchilled 250  34.8  
## 4  Qn1   Quebec nonchilled 350  37.2  
## 5  Qn1   Quebec nonchilled 500  35.3  
## 6  Qn1   Quebec nonchilled 675  39.2  
## 7  Qn1   Quebec nonchilled 1000 39.7  
## 8  Qn2   Quebec nonchilled 95   13.6  
## 9  Qn2   Quebec nonchilled 175  27.3  
## 10 Qn2   Quebec nonchilled 250  37.1  
## 11 Qn2   Quebec nonchilled 350  41.8  
## 12 Qn2   Quebec nonchilled 500  40.6  
## 13 Qn2   Quebec nonchilled 675  41.4  
## 14 Qn2   Quebec nonchilled 1000 44.3  
## 15 Qn3   Quebec nonchilled 95   16.2
```

```r
right.just(left.just(CO2[1:15,]))
```

```
##    Plant   Type  Treatment conc uptake
## 1    Qn1 Quebec nonchilled   95     16
## 2    Qn1 Quebec nonchilled  175   30.4
## 3    Qn1 Quebec nonchilled  250   34.8
## 4    Qn1 Quebec nonchilled  350   37.2
## 5    Qn1 Quebec nonchilled  500   35.3
## 6    Qn1 Quebec nonchilled  675   39.2
## 7    Qn1 Quebec nonchilled 1000   39.7
## 8    Qn2 Quebec nonchilled   95   13.6
## 9    Qn2 Quebec nonchilled  175   27.3
## 10   Qn2 Quebec nonchilled  250   37.1
## 11   Qn2 Quebec nonchilled  350   41.8
## 12   Qn2 Quebec nonchilled  500   40.6
## 13   Qn2 Quebec nonchilled  675   41.4
## 14   Qn2 Quebec nonchilled 1000   44.3
## 15   Qn3 Quebec nonchilled   95   16.2
```


<h4 id="search">Search Columns of a Dataframe</h4> 

A task of many analyses is to search a dataframe for a particular phrase and return those rows/observations that contain that term.  The researcher may optionally choose to specify a particular column to search (<font face="courier">column.name</font>) or search the entire dataframe.

<font size="5" color="orange">&diams;</font> **Search Dataframes** <font size="5" color="orange">&diams;</font>


```r
(SampDF <- data.frame("islands"=names(islands)[1:32],mtcars, row.names=NULL))
```

```
##            islands  mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## 1           Africa 21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
## 2       Antarctica 21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
## 3             Asia 22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
## 4        Australia 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## 5     Axel Heiberg 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
## 6           Baffin 18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
## 7            Banks 14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
## 8           Borneo 24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## 9          Britain 22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
## 10         Celebes 19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
## 11           Celon 17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
## 12            Cuba 16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
## 13           Devon 17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
## 14       Ellesmere 15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
## 15          Europe 10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
## 16       Greenland 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
## 17          Hainan 14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
## 18      Hispaniola 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
## 19        Hokkaido 30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
## 20          Honshu 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
## 21         Iceland 21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
## 22         Ireland 15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
## 23            Java 15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
## 24          Kyushu 13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
## 25           Luzon 19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
## 26      Madagascar 27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
## 27        Melville 26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
## 28        Mindanao 30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
## 29        Moluccas 15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
## 30     New Britain 19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
## 31      New Guinea 15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
## 32 New Zealand (N) 21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
```

```r
Search(SampDF, "Cuba", "islands")
```

```
##    islands  mpg cyl  disp  hp drat   wt qsec vs am gear carb
## 12    Cuba 16.4   8 275.8 180 3.07 4.07 17.4  0  0    3    3
```

```r
Search(SampDF, "New", "islands")
```

```
##            islands  mpg cyl  disp  hp drat   wt qsec vs am gear carb
## 8           Borneo 24.4   4 146.7  62 3.69 3.19 20.0  1  0    4    2
## 30     New Britain 19.7   6 145.0 175 3.62 2.77 15.5  0  1    5    6
## 31      New Guinea 15.0   8 301.0 335 3.54 3.57 14.6  0  1    5    8
## 32 New Zealand (N) 21.4   4 121.0 109 4.11 2.78 18.6  1  1    4    2
```

```r
Search(SampDF, "Ho")
```

```
##         islands  mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## 5  Axel Heiberg 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
## 8        Borneo 24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## 11        Celon 17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
## 13        Devon 17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
## 15       Europe 10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
## 17       Hainan 14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
## 18   Hispaniola 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
## 19     Hokkaido 30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
## 20       Honshu 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
## 24       Kyushu 13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
## 25        Luzon 19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
## 28     Mindanao 30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
## 29     Moluccas 15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
```

```r
Search(SampDF, "Ho", max.distance = 0)
```

```
##     islands  mpg cyl disp hp drat    wt  qsec vs am gear carb
## 19 Hokkaido 30.4   4 75.7 52 4.93 1.615 18.52  1  1    4    2
## 20   Honshu 33.9   4 71.1 65 4.22 1.835 19.90  1  1    4    1
```

```r
Search(SampDF, "Axel Heiberg")
```

```
##        islands  mpg cyl disp  hp drat   wt  qsec vs am gear carb
## 5 Axel Heiberg 18.7   8  360 175 3.15 3.44 17.02  0  0    3    2
```

```r
Search(SampDF, 19) #too much tolerance in max.distance
```

```
##            islands  mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## 1           Africa 21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
## 2       Antarctica 21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
## 3             Asia 22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
## 4        Australia 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## 5     Axel Heiberg 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
## 6           Baffin 18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
## 7            Banks 14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
## 8           Borneo 24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## 9          Britain 22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
## 10         Celebes 19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
## 11           Celon 17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
## 12            Cuba 16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
## 13           Devon 17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
## 14       Ellesmere 15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
## 15          Europe 10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
## 16       Greenland 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
## 17          Hainan 14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
## 18      Hispaniola 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
## 19        Hokkaido 30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
## 20          Honshu 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
## 21         Iceland 21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
## 22         Ireland 15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
## 23            Java 15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
## 24          Kyushu 13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
## 25           Luzon 19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
## 26      Madagascar 27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
## 27        Melville 26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
## 28        Mindanao 30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
## 29        Moluccas 15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
## 30     New Britain 19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
## 31      New Guinea 15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
## 32 New Zealand (N) 21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
```

```r
Search(SampDF, 19, max.distance = 0)
```

```
##        islands  mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## 4    Australia 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## 8       Borneo 24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## 10     Celebes 19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
## 18  Hispaniola 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
## 20      Honshu 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
## 25       Luzon 19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
## 30 New Britain 19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
```

```r
Search(SampDF, 19, "qsec", max.distance = 0)
```

```
##       islands  mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## 4   Australia 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## 18 Hispaniola 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
## 20     Honshu 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
```



<h3 id="tools">Generic qdap Tools</h3>

This manual arranges functions into categories in the order a researcher is likely to use them.  The Generic qdap Tools section does not fit this convention, however, because these tools may be used throughout all stages of analysis it is important that the reader is familiar with them.  It is important to note that after reading in transcript data the researcher will likely that the next step is the need to parse the dataframe utilizing the techniques found in the <a href="#cleaning">Cleaning/Preparing the Data</a> section.

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/hms2sec.html" target="_blank">
    <input type="submit" value="hms2sec"> - <a href="#time">Convert h:m:s to Seconds</a> 
</form>

<form action="http://trinker.github.io/qdap_dev/sec2hms.html" target="_blank">
    <input type="submit" value="sec2hms"> - <a href="#time">Convert Seconds to h:m:s</a> 
</form>

<form action="http://trinker.github.io/qdap_dev/lookup.html" target="_blank">
    <input type="submit" value="lookup"> - <a href="#hash">Hash Table/Dictionary Lookup</a>
</form>

<form action="http://trinker.github.io/qdap_dev/qcv.html" target="_blank">
    <input type="submit" value="qcv"> - <a href="#qcv">Quick Character Vector</a>
</form>

<form action="http://trinker.github.io/qdap_dev/url_dl.html" target="_blank">
    <input type="submit" value="url_dl"> - <a href="#urldl">Download Instructional Documents</a>
</form>
</div>

<h4 id="qcv">Quick Character Vector</h4> 

Often it can be tedious to supply quotes to character vectors when dealing with large vectors.  <a href="http://trinker.github.io/qdap_dev/qcv.html" target="_blank"><code>qcv</code></a> replaces the typical <font face="courier">c("A", "B", "C", "...")</font> approach to creating character vectors.  Instead the user supplies <font face="courier">qcv(A, B, C, ...)</font>.  This format assumes single words separated by commas.  If your data/string does not fit this approach the combined `terms` and `split` argument can be utilized.

<font size="5" color="orange">&diams;</font> **Quick Character Vector** <font size="5" color="orange">&diams;</font>


```r
qcv(I, like, dogs)
```

```
## [1] "I"    "like" "dogs"
```

```r
qcv(terms = "I like, big dogs", split = ",")
```

```
## [1] "I like"   "big dogs"
```

```r
qcv(I, like, dogs, space.wrap = TRUE)
```

```
## [1] " I "    " like " " dogs "
```

```r
qcv(I, like, dogs, trailing = TRUE)
```

```
## [1] "I "    "like " "dogs "
```

```r
qcv(I, like, dogs, leading = TRUE)
```

```
## [1] " I"    " like" " dogs"
```

```r
qcv(terms = "mpg cyl  disp  hp drat    wt  qsec vs am gear carb")
```

```
##  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
## [11] "carb"
```


<h4 id="hash">Dictionary/Lookup</h4>  

Often the researcher who deals with text data will have the need to lookup values quickly and return an accompanying value.  This is often called a dictionary, hash, or lookup.  This can be used to find corresponding values or recode variables etc.  The <a href="http://trinker.github.io/qdap_dev/lookup.html" target="_blank"><code>lookup</code></a> function provides a fast enviroment lookup for this type of usage.

<font size="5" color="orange">&diams;</font> **Dictionary/Look Up Examples** <font size="5" color="orange">&diams;</font>


```r
lookup(1:5, data.frame(1:4, 11:14))
```

```
## [1] 11 12 13 14 NA
```

```r

lookup(LETTERS[1:5], data.frame(LETTERS[1:5], 100:104))
```

```
## [1] 100 101 102 103 104
```


<pre><code class="r">## Fast with very large vectors
key <- data.frame(x=1:2, y=c("A", "B"))
set.seed(10)
big.vec <- sample(1:2, 3000000, T)
out <- lookup(big.vec, key)
out[1:20]</code></pre>


<pre><code>##  [1] "B" "A" "A" "B" "A" "A" "A" "A" "B" "A" "B" "B" "A"
## [14] "B" "A" "A" "A" "A" "A" "B"</code></pre>


```r
## Supply a named list of vectors to key.match

codes <- list(A=c(1, 2, 4),
    B = c(3, 5),
    C = 7,
    D = c(6, 8:10))

lookup(1:10, codes)
```

```
##  [1] "A" "A" "B" "A" "B" "D" "C" "D" "D" "D"
```



```r
## Supply a single vector to key.match and key.assign

lookup(mtcars$carb, sort(unique(mtcars$carb)),
    c('one', 'two', 'three', 'four', 'six', 'eight'))
```

```
##  [1] "four"  "four"  "one"   "one"   "two"   "one"   "four"  "two"  
##  [9] "two"   "four"  "four"  "three" "three" "three" "four"  "four" 
## [17] "four"  "one"   "two"   "one"   "one"   "two"   "two"   "four" 
## [25] "two"   "one"   "two"   "two"   "four"  "six"   "eight" "two"
```

```r

lookup(mtcars$carb, sort(unique(mtcars$carb)),
    seq(10, 60, by=10))
```

```
##  [1] 40 40 10 10 20 10 40 20 20 40 40 30 30 30 40 40 40 10 20 10 10 20 20
## [24] 40 20 10 20 20 40 50 60 20
```


<h4 id="time">Time Conversion</h4>  

Researchers dealing with transcripts may have the need to convert between traditional Hours:Minutes:Seconds format and seconds.  <a href="http://trinker.github.io/qdap_dev/hms2sec.html" target="_blank"><code>hms2sec</code></a> and <a href="http://trinker.github.io/qdap_dev/sec2hms.html" target="_blank"><code>sec2hms</code></a> such functionalit.

<font size="5" color="orange">&diams;</font> **Time Conversion Examples** <font size="5" color="orange">&diams;</font>


```r
hms2sec(c("02:00:03", "04:03:01"))
```

```
## [1]  7203 14581
```

```r
hms2sec(sec2hms(c(222, 1234, 55)))
```

```
## [1]  222 1234   55
```

```r
sec2hms(c(256, 3456, 56565))
```

```
## [1] 00:04:16 00:57:36 15:42:45
```


<h4 id="urldl">Download Documents</h4>  
 
<a href="http://trinker.github.io/qdap_dev/url_dl.html" target="_blank"><code>url_dl</code></a> is a function used to provide qdap users with examples taken from the Internet.  It is useful for most document downloads from the Internet.

<font size="5" color="orange">&diams;</font> **url_dl Examples** <font size="5" color="orange">&diams;</font>

<pre><code class="r">## Example 1 (download from dropbox)
# download transcript of the debate to working directory
url_dl(pres.deb1.docx, pres.deb2.docx, pres.deb3.docx)

# load multiple files with read transcript and assign to working directory
dat1 <- read.transcript("pres.deb1.docx", c("person", "dialogue"))
dat2 <- read.transcript("pres.deb2.docx", c("person", "dialogue"))
dat3 <- read.transcript("pres.deb3.docx", c("person", "dialogue"))

docs <- qcv(pres.deb1.docx, pres.deb2.docx, pres.deb3.docx)
dir() %in% docs
delete(docs)    #remove the documents
dir() %in% docs

## Example 2 (quoted string urls)
url_dl("https://dl.dropboxusercontent.com/u/61803503/qdap.pdf",
   "http://www.cran.r-project.org/doc/manuals/R-intro.pdf")

## Clean up
delete(qcv(qdap.pdf, R-intro.pdf))</code></pre>


<h3 id="cleaning">Cleaning/Preparing the Data</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/bracketX.html" target="_blank">
    <input type="submit" value="bracketX"><input type="submit" value="bracketXtract"><input type="submit" value="genX"><input type="submit" value="genXtract"> - <a href="#bracket">Bracket/General Chunk Extraction</a>     
</form>

<form action="http://trinker.github.io/qdap_dev/beg2char.html" target="_blank">
    <input type="submit" value="beg2char"><input type="submit" value="char2end"> - <a href="#grab">Grab Begin/End of String to Character</a> 
</form>

<form action="http://trinker.github.io/qdap_dev/capitalizer.html" target="_blank">
    <input type="submit" value="capitalizer"> - <a href="#caps">Capitalize Select Words</a> 
</form>

<form action="http://trinker.github.io/qdap_dev/clean.html" target="_blank">
    <input type="submit" value="clean"> - <a href="#clean">Remove Escaped Characters</a>
</form>

<form action="http://trinker.github.io/qdap_dev/incomplete.replace.html" target="_blank">
    <input type="submit" value="incomplete.replace"><input type="submit" value="incomp"> - <a href="#inc">Denote Incomplete End Marks With "|"</a>
</form>

<form action="http://trinker.github.io/qdap_dev/multigsub.html" target="_blank">
    <input type="submit" value="multigsub"><input type="submit" value="mgsub"> - <a href="#mgsub">Multiple gsub</a>
</form>

<form action="http://trinker.github.io/qdap_dev/name2sex.html" target="_blank">
    <input type="submit" value="name2sex"> - <a href="#nms">Names to Gender Prediction</a>
</form>

<form action="http://trinker.github.io/qdap_dev/potential_NA.html" target="_blank">
    <input type="submit" value="potential_NA"> - <a href="#na">Search for Potential Missing Values</a>
</form>

<form action="http://trinker.github.io/qdap_dev/qprep.html" target="_blank">
    <input type="submit" value="qprep"> - <a href="#replace">Quick Preparation of Text</a>
</form>

<form action="http://trinker.github.io/qdap_dev/replace_abbreviation.html" target="_blank">
    <input type="submit" value="replace_abbreviation"> - <a href="#replace">Replace Abbreviations</a>
</form>

<form action="http://trinker.github.io/qdap_dev/replace_contraction.html" target="_blank">
    <input type="submit" value="replace_contraction"> - <a href="#replace">Replace Contractions</a>
</form>

<form action="http://trinker.github.io/qdap_dev/replace_number.html" target="_blank">
    <input type="submit" value="replace_number"> - <a href="#replace">Replace Numbers With Text Representation</a>
</form>

<form action="http://trinker.github.io/qdap_dev/replace_symbol.html" target="_blank">
    <input type="submit" value="replace_symbol"> - <a href="#replace">Replace Symbols With Word Equivalents</a>
</form>

<form action="http://trinker.github.io/qdap_dev/rm_row.html" target="_blank">
    <input type="submit" value="rm_row"><input type="submit" value="rm_empty_row"> - <a href="#mark">Remove Rows That Contain Markers</a>
</form>

<form action="http://trinker.github.io/qdap_dev/scrubber.html" target="_blank">
    <input type="submit" value="scrubber"> - <a href="#clean">Clean Imported Text</a>
</form>

<form action="http://trinker.github.io/qdap_dev/space_fill.html" target="_blank">
    <input type="submit" value="space_fill"> - <a href="#fill">Replace Spaces</a>
</form>

<form action="http://trinker.github.io/qdap_dev/spaste.html" target="_blank">
    <input type="submit" value="spaste"> - <a href="#spaste">Add Leading/Trailing Spaces</a>
</form>

<form action="http://trinker.github.io/qdap_dev/stemmer.html" target="_blank">
    <input type="submit" value="stemmer"><input type="submit" value="stem.words"><input type="submit" value="stem2df"> - <a href="#stem">Stem Text</a>
</form>

<form action="http://trinker.github.io/qdap_dev/Trim.html" target="_blank">
    <input type="submit" value="Trim"> - <a href="#clean">Remove Leading/Trailing White Space</a>
</form>
</div>

<h4 id="bracket">Bracket/General Chunk Extraction <a href="http://youtu.be/B4lvZGo_6bA" target="_blank" style="text-decoration: none"><b><font size="5" color="#B22222">[YT]</font></b></a>
</h4>   

After reading in the data the researcher may want to remove all non-dialogue text from the transcript dataframe such as transcriber annotations.  This can be accomplished with the <a href="http://trinker.github.io/qdap_dev/bracketX.html" target="_blank"><code>bracketX</code></a> family of functions, which removes text found between two brackets (<font face="courier">( )</font>, <font face="courier">{ }</font>, <font face="courier">[ ]</font>, <font face="courier">< ></font>) or more generally using <a href="http://trinker.github.io/qdap_dev/genX.html" target="_blank"><code>genX</code></a> and <a href="http://trinker.github.io/qdap_dev/genXtract.html" target="_blank"><code>genXtract</code></a> to remove text between two character reference points. 

If the bracketed text is useful to analysis it is recommended that the researcher assigns the un-bracketed text to a new column.


<font size="5" color="orange">&diams;</font> **Extracting Chunks 1**- *bracketX/bracketXtract* <font size="5" color="orange">&diams;</font>


```r
## A fake data set
examp <- structure(list(person = structure(c(1L, 2L, 1L, 3L),
    .Label = c("bob", "greg", "sue"), class = "factor"), text =
    c("I love chicken [unintelligible]!",
    "Me too! (laughter) It's so good.[interrupting]",
    "Yep it's awesome {reading}.", "Agreed. {is so much fun}")), .Names =
    c("person", "text"), row.names = c(NA, -4L), class = "data.frame")
examp
```

```
##   person                                           text
## 1    bob               I love chicken [unintelligible]!
## 2   greg Me too! (laughter) It's so good.[interrupting]
## 3    bob                    Yep it's awesome {reading}.
## 4    sue                       Agreed. {is so much fun}
```

```r
bracketX(examp$text, "square")
```

```
## [1] "I love chicken!"                  "Me too! (laughter) It's so good."
## [3] "Yep it's awesome {reading}."      "Agreed. {is so much fun}"
```

```r
bracketX(examp$text, "curly")
```

```
## [1] "I love chicken [unintelligible]!"              
## [2] "Me too! (laughter) It's so good.[interrupting]"
## [3] "Yep it's awesome."                             
## [4] "Agreed."
```

```r
bracketX(examp$text, c("square", "round"))
```

```
## [1] "I love chicken!"             "Me too! It's so good."      
## [3] "Yep it's awesome {reading}." "Agreed. {is so much fun}"
```

```r
bracketX(examp$text)
```

```
## [1] "I love chicken!"       "Me too! It's so good." "Yep it's awesome."    
## [4] "Agreed."
```

```r
bracketXtract(examp$text, "square")
```

```
## $square1
## [1] "unintelligible"
## 
## $square2
## [1] "interrupting"
## 
## $square3
## character(0)
## 
## $square4
## character(0)
```

```r
bracketXtract(examp$text, "curly")
```

```
## $curly1
## character(0)
## 
## $curly2
## character(0)
## 
## $curly3
## [1] "reading"
## 
## $curly4
## [1] "is so much fun"
```

```r
bracketXtract(examp$text, c("square", "round"))
```

```
## [[1]]
## [1] "unintelligible"
## 
## [[2]]
## [1] "interrupting" "laughter"    
## 
## [[3]]
## character(0)
## 
## [[4]]
## character(0)
```

```r
bracketXtract(examp$text, c("square", "round"), merge = FALSE)
```

```
## $square
## $square[[1]]
## [1] "unintelligible"
## 
## $square[[2]]
## [1] "interrupting"
## 
## $square[[3]]
## character(0)
## 
## $square[[4]]
## character(0)
## 
## 
## $round
## $round[[1]]
## character(0)
## 
## $round[[2]]
## [1] "laughter"
## 
## $round[[3]]
## character(0)
## 
## $round[[4]]
## character(0)
```

```r
bracketXtract(examp$text)
```

```
## $all1
## [1] "unintelligible"
## 
## $all2
## [1] "laughter"     "interrupting"
## 
## $all3
## [1] "reading"
## 
## $all4
## [1] "is so much fun"
```

```r
bracketXtract(examp$text, with = TRUE)
```

```
## $all1
## [1] "[unintelligible]"
## 
## $all2
## [1] "(laughter)"     "[interrupting]"
## 
## $all3
## [1] "{reading}"
## 
## $all4
## [1] "{is so much fun}"
```


Often a researcher will want to extract some text from the transcript and put it back together.  One example is the reconstructing of material read from a book, poem, play or other text.  This information is generally dispersed throughout the dialogue (within classroom/teaching procedures).   If this text is denoted with a particular identifying bracket such as curly braces this text can be extracted and then pasted back together.

<font size="5" color="orange">&diams;</font> **Extracting Chunks 2**- *Recombining Chunks* <font size="5" color="orange">&diams;</font>


```r
paste2(bracketXtract(examp$text, "curly"), " ")
```

```
## [1] "reading is so much fun"
```


The researcher may need a more general extraction method that allows for any left/right boundaries to be specified.  This is useful in that many qualitative transciption/coding programs have specific syntax for various dialogue markup for events that must be parsed from the data set.  The <a href="http://trinker.github.io/qdap_dev/genX.html" target="_blank"><code>genX</code></a> and <a href="http://trinker.github.io/qdap_dev/genXtract.html" target="_blank"><code>genXtract</code></a> functions have such capabilities.

<font size="5" color="orange">&diams;</font> **Extracting Chunks 3**- *genX/genXtract* <font size="5" color="orange">&diams;</font>

```r
DATA$state  
```

```
##  [1] "Computer is fun. Not too fun."        
##  [2] "No it's not, it's dumb."              
##  [3] "What should we do?"                   
##  [4] "You liar, it stinks!"                 
##  [5] "I am telling the truth!"              
##  [6] "How can we be certain?"               
##  [7] "There is no way."                     
##  [8] "I distrust you."                      
##  [9] "What are you talking about?"          
## [10] "Shall we move on?  Good then."        
## [11] "I'm hungry.  Let's eat.  You already?"
```

```r
## Look at the difference in number 1 and 10 from above
genX(DATA$state, c("is", "we"), c("too", "on"))
```

```
##  [1] "Computer fun."                      
##  [2] "No it's not, it's dumb."            
##  [3] "What should we do?"                 
##  [4] "You liar, it stinks!"               
##  [5] "I am telling the truth!"            
##  [6] "How can we be certain?"             
##  [7] "There is no way."                   
##  [8] "I distrust you."                    
##  [9] "What are you talking about?"        
## [10] "Shall? Good then."                  
## [11] "I'm hungry. Let's eat. You already?"
```

```r
## A fake data set
x <- c("Where is the /big dog#?",
    "I think he's @arunning@b with /little cat#.")
x
```

```
## [1] "Where is the /big dog#?"                    
## [2] "I think he's @arunning@b with /little cat#."
```

```r
genXtract(x, c("/", "@a"), c("#", "@b"))
```

```
## [[1]]
## [1] "big dog"
## 
## [[2]]
## [1] "little cat" "running"
```

```r
## A fake data set
x2 <- c("Where is the L1big dogL2?",
    "I think he's 98running99 with L1little catL2.")
x2
```

```
## [1] "Where is the L1big dogL2?"                    
## [2] "I think he's 98running99 with L1little catL2."
```

```r
genXtract(x2, c("L1", 98), c("L2", 99))
```

```
## [[1]]
## [1] "big dog"
## 
## [[2]]
## [1] "little cat" "running"
```


<h4 id="na">Search for Potential Missing Values</h4>

After reading in data, removing non-dialogue (via <a href="http://trinker.github.io/qdap_dev/bracketX.html" target="_blank"><code>bracketX</code></a>), and viewing it the researcher will want to find text rows that do not contain proper punctuation and or that contain punctuation and no text.  This is accomplished with the <a href="http://trinker.github.io/qdap_dev/htruncdf.html" target="_blank"><code>_truncdf</code></a> family of functions and <a href="http://trinker.github.io/qdap_dev/potential_NA.html" target="_blank"><code>potential_NA</code></a> functions as the researcher manually parses the original transcripts, makes alterations and re-reads the data back into qdap.  This important procedure is not an automatic process, requiring that the researcher give attention to detail in comparing the R dataframe with the original transcript.

<font size="5" color="orange">&diams;</font> **Identifying and Coding Missing Values** <font size="5" color="orange">&diams;</font>

```r
## Create a data set with punctuation and no text
DATA$state[c(3, 7, 10)] <- c(".", ".", NA)
DATA
```

```
##        person sex adult                                 state code
## 1         sam   m     0         Computer is fun. Not too fun.   K1
## 2        greg   m     0               No it's not, it's dumb.   K2
## 3     teacher   m     1                                     .   K3
## 4         sam   m     0                  You liar, it stinks!   K4
## 5        greg   m     0               I am telling the truth!   K5
## 6       sally   f     0                How can we be certain?   K6
## 7        greg   m     0                                     .   K7
## 8         sam   m     0                       I distrust you.   K8
## 9       sally   f     0           What are you talking about?   K9
## 10 researcher   f     1                                  <NA>  K10
## 11       greg   m     0 I'm hungry.  Let's eat.  You already?  K11
```

```r
potential_NA(DATA$state, 20)
```

```
##   row            text
## 1   3               .
## 2   7               .
## 3   8 I distrust you.
```

```r
potential_NA(DATA$state)
```

```
##   row text
## 1   3    .
## 2   7    .
```

```r
# USE TO SELCTIVELY REPLACE CELLS WITH MISSING VALUES
DATA$state[potential_NA(DATA$state, 20)$row[-c(3)]] <- NA
DATA
```

```
##        person sex adult                                 state code
## 1         sam   m     0         Computer is fun. Not too fun.   K1
## 2        greg   m     0               No it's not, it's dumb.   K2
## 3     teacher   m     1                                  <NA>   K3
## 4         sam   m     0                  You liar, it stinks!   K4
## 5        greg   m     0               I am telling the truth!   K5
## 6       sally   f     0                How can we be certain?   K6
## 7        greg   m     0                                  <NA>   K7
## 8         sam   m     0                       I distrust you.   K8
## 9       sally   f     0           What are you talking about?   K9
## 10 researcher   f     1                                  <NA>  K10
## 11       greg   m     0 I'm hungry.  Let's eat.  You already?  K11
```

```r
## Reset DATA
DATA <- qdap::DATA
```


<h4 id="mark">Remove Rows That Contain Markers</h4>

The researcher may wish to remove empty rows (using <a href="http://trinker.github.io/qdap_dev/rm_empty_row.html" target="_blank"><code>rm_empty_row</code></a>) and/or rows that contain certain markers (using <a href="http://trinker.github.io/qdap_dev/rm_row.html" target="_blank"><code>rm_row</code></a>).  Sometimes empty rows are read into the dataframe from the transcript.  These rows should be completely removed from the data set rather than denoting with `NA`.  The <a href="http://trinker.github.io/qdap_dev/rm_empty_row.html" target="_blank"><code>rm_empty_row</code></a> removes completely empty rows (those rows with only 1 or more blank spaces) from the dataframe.

<font size="5" color="orange">&diams;</font> **Remove Empty Rows**<font size="5" color="orange">&diams;</font>

```r
(dat <- rbind.data.frame(DATA[, c(1, 4)], matrix(rep(" ", 4),
   ncol =2, dimnames=list(12:13, colnames(DATA)[c(1, 4)]))))
```

```
##        person                                 state
## 1         sam         Computer is fun. Not too fun.
## 2        greg               No it's not, it's dumb.
## 3     teacher                    What should we do?
## 4         sam                  You liar, it stinks!
## 5        greg               I am telling the truth!
## 6       sally                How can we be certain?
## 7        greg                      There is no way.
## 8         sam                       I distrust you.
## 9       sally           What are you talking about?
## 10 researcher         Shall we move on?  Good then.
## 11       greg I'm hungry.  Let's eat.  You already?
## 12                                                 
## 13
```

```r
rm_empty_row(dat)
```

```
##        person                                 state
## 1         sam         Computer is fun. Not too fun.
## 2        greg               No it's not, it's dumb.
## 3     teacher                    What should we do?
## 4         sam                  You liar, it stinks!
## 5        greg               I am telling the truth!
## 6       sally                How can we be certain?
## 7        greg                      There is no way.
## 8         sam                       I distrust you.
## 9       sally           What are you talking about?
## 10 researcher         Shall we move on?  Good then.
## 11       greg I'm hungry.  Let's eat.  You already?
```


Other times the researcher may wish to use <a href="http://trinker.github.io/qdap_dev/rm_row.html" target="_blank"><code>rm_row</code></a> to remove rows from the dataframe/analysis based on transcription conventions or to remove demographic characteristics.  For example, in the example below the transcript is read in with <b>[Cross Talk 3</b>.  This is a transcription convention and we would want to parse these rows from the transcript.  A second example shows the removal of people from the dataframe.

<font size="5" color="orange">&diams;</font> **Remove Selected Rows**<font size="5" color="orange">&diams;</font>


```r
## Read in transcript
dat2 <- read.transcript(system.file("extdata/transcripts/trans1.docx", 
    package = "qdap"))
truncdf(dat2, 40)
```

```
##                  X1                                       X2
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4     [Cross Talk 3                                      00]
## 5         Teacher 4 Let's read this terrific book together.
```

```r
## Use column names to remove rows
truncdf(rm_row(dat2, "X1", "[C"), 40)
```

```
##                  X1                                       X2
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4         Teacher 4 Let's read this terrific book together.
```

```r
## Use column numbers to remove rows
truncdf(rm_row(dat2, 2, "[C"), 40)
```

```
##                  X1                                       X2
## 1      Researcher 2                         October 7, 1892.
## 2         Teacher 4 Students it's time to learn. [Student di
## 3 Multiple Students        Yes teacher we're ready to learn.
## 4     [Cross Talk 3                                      00]
## 5         Teacher 4 Let's read this terrific book together.
```

```r
## Also remove people ect. from the analysis
rm_row(DATA, 1, c("sam", "greg"))
```

```
##       person sex adult                         state code
## 1    teacher   m     1            What should we do?   K3
## 2      sally   f     0        How can we be certain?   K6
## 3      sally   f     0   What are you talking about?   K9
## 4 researcher   f     1 Shall we move on?  Good then.  K10
```


<h4 id="clean">Remove Extra Spaces and Escaped Characters</h4> 

Another step in the cleaning process is the removal of extra white spaces (use <a href="http://trinker.github.io/qdap_dev/Trim.html" target="_blank"><code>Trim</code></a>) and <a href="http://stat.ethz.ch/R-manual/R-devel/library/base/html/Quotes.html" target="_blank">escaped characters</a> (use <a href="http://trinker.github.io/qdap_dev/clean.html" target="_blank"><code>clean</code></a>).  The <a href="http://trinker.github.io/qdap_dev/scrubber.html" target="_blank"><code>scrubber</code></a> function wraps both <a href="http://trinker.github.io/qdap_dev/Trim.html" target="_blank"><code>Trim</code></a> and <a href="http://trinker.github.io/qdap_dev/clean.html" target="_blank"><code>clean</code></a> and adds in the functionality of some of the <font face="courier">replace_</font> family of functions.

<font size="5" color="orange">&diams;</font> **Remove Extra Spaces and Escaped Characters**<font size="5" color="orange">&diams;</font>

```r
x1 <- "I go \r
    to the \tnext line"
x1
```

```
## [1] "I go \r\n    to the \tnext line"
```

```r
clean(x1)
```

```
## [1] "I go to the next line"
```

```r
x2 <- c("  talkstats.com ", "   really? ", " yeah")
x2
```

```
## [1] "  talkstats.com " "   really? "      " yeah"
```

```r
Trim(x2)
```

```
## [1] "talkstats.com" "really?"       "yeah"
```

```r
x3 <- c("I like 456 dogs\t  , don't you?\"")
x3
```

```
## [1] "I like 456 dogs\t  , don't you?\""
```

```r
scrubber(x3)
```

```
## [1] "I like 456 dogs, don't you?"
```

```r
scrubber(x3, TRUE)
```

```
## [1] "I like four hundred fifty six dogs, don't you?"
```


<h4 id="replace">Replacement Functions</h4>
"replace_abbreviation"
"replace_contraction"         
"replace_number"             
"replace_symbol"  
"qprep"

<font size="5" color="orange">&diams;</font> **Replace Abbreviations**<font size="5" color="orange">&diams;</font>

```r
## Use the standard contractions dictionary
x <- c("Mr. Jones is here at 7:30 p.m.",
    "Check it out at www.github.com/trinker/qdap",
    "i.e. He's a sr. dr.; the best in 2012 A.D.",
    "the robot at t.s. is 10ft. 3in.")
x
```

```
## [1] "Mr. Jones is here at 7:30 p.m."             
## [2] "Check it out at www.github.com/trinker/qdap"
## [3] "i.e. He's a sr. dr.; the best in 2012 A.D." 
## [4] "the robot at t.s. is 10ft. 3in."
```

```r
replace_abbreviation(x)
```

```
## [1] "Mister Jones is here at 7:30 PM."                    
## [2] "Check it out at www dot github dot com /trinker/qdap"
## [3] "ie He's a Senior Doctor ; the best in 2012 AD."      
## [4] "the robot at t.s. is 10ft. 3in."
```

```r
## Augment the standard dictionary with replacement vectors
abv <- c("in.", "ft.", "t.s.")
repl <- c("inch", "feet", "talkstats")
replace_abbreviation(x, abv, repl)
```

```
## [1] "Mr. Jones is here at 7:30 p.m."             
## [2] "Check it out at www.github.com/trinker/qdap"
## [3] "i.e. He's a sr. dr.; the best in 2012 A.D." 
## [4] "the robot at talkstats is 10 feet 3 inch."
```

```r
## Augment the standard dictionary with a replacement dataframe
(KEY <- rbind(abbreviations, data.frame(abv = abv, rep = repl)))
```

```
##       abv       rep
## 1     Mr.    Mister
## 2    Mrs.    Misses
## 3     Ms.      Miss
## 4    .com   dot com
## 5    www.   www dot
## 6    i.e.        ie
## 7    A.D.        AD
## 8    B.C.        BC
## 9    A.M.        AM
## 10   P.M.        PM
## 11 et al.     et al
## 12    Jr.    Junior
## 13    Dr.    Doctor
## 14    Sr.    Senior
## 15    in.      inch
## 16    ft.      feet
## 17   t.s. talkstats
```

```r
replace_abbreviation(x, KEY)
```

```
## [1] "Mister Jones is here at 7:30 PM."                    
## [2] "Check it out at www dot github dot com /trinker/qdap"
## [3] "ie He's a Senior Doctor ; the best in 2012 AD."      
## [4] "the robot at talkstats is 10 feet 3 inch."
```


<font size="5" color="orange">&diams;</font> **Replace Contractions**<font size="5" color="orange">&diams;</font>

```r
x <- c("Mr. Jones isn't going.",
    "Check it out what's going on.",
    "He's here but didn't go.",
    "the robot at t.s. wasn't nice",
    "he'd like it if i'd go away")
x
```

```
## [1] "Mr. Jones isn't going."        "Check it out what's going on."
## [3] "He's here but didn't go."      "the robot at t.s. wasn't nice"
## [5] "he'd like it if i'd go away"
```

```r
replace_contraction(x)
```

```
## [1] "Mr. Jones is not going."            
## [2] "Check it out what is going on."     
## [3] "He is here but did not go."         
## [4] "The robot at t.s. was not nice"     
## [5] "He would like it if I would go away"
```


<font size="5" color="orange">&diams;</font> **Replace Numbers**-*Numeral Representation*<font size="5" color="orange">&diams;</font>

```r
x <- c("I like 346457 ice cream cones.", "They are 99 percent good")
replace_number(x)
```

```
## [1] "I like three hundred forty six thousand four hundred fifty seven ice cream cones."
## [2] "They are ninety nine percent good"
```

```r
## Replace numbers that contain commas as well
y <- c("I like 346,457 ice cream cones.", "They are 99 percent good")
replace_number(y)
```

```
## [1] "I like three hundred forty six thousand four hundred fifty seven ice cream cones."
## [2] "They are ninety nine percent good"
```

```r
## Combine numbers as one word/string
replace_number(x, "combine")
```

```
## [1] "I like threehundredfortysixthousandfourhundredfiftyseven ice cream cones."
## [2] "They are ninetynine percent good"
```


<font size="5" color="orange">&diams;</font> **Replace Symbols**<font size="5" color="orange">&diams;</font>

```r
x <- c("I am @ Jon's & Jim's w/ Marry",
    "I owe $41 for food",
    "two is 10% of a #")
x
```

```
## [1] "I am @ Jon's & Jim's w/ Marry" "I owe $41 for food"           
## [3] "two is 10% of a #"
```

```r
replace_symbol(x)
```

```
## [1] "I am at Jon's and Jim's with Marry"
## [2] "I owe dollar 41 for food"          
## [3] "two is 10 percent of a number"
```

```r
replace_number(replace_symbol(x))
```

```
## [1] "I am at Jon's and Jim's with Marry"
## [2] "I owe dollar forty one for food"   
## [3] "two is ten percent of a number"
```


<font size="5" color="orange">&diams;</font> **General Replacement (Quick Preparation)**<font size="5" color="orange">&diams;</font>

```r
x <- "I like 60 (laughter) #d-bot and $6 @ the store w/o 8p.m."
x
```

```
## [1] "I like 60 (laughter) #d-bot and $6 @ the store w/o 8p.m."
```

```r
qprep(x)
```

```
## [1] "I like sixty number d bot and dollar six at the store without eight PM."
```


<h4 id="spaste">Add Leading/Trailing Spaces</h4>
<h4 id="fill">Replace Spaces</h4>
<h4 id="mgsub">Multiple gsub</h4>
<h4 id="caps">Capitalize Select Words</h4>
<h4 id="nms">Names to Gender Prediction</h4>
<h4 id="stem">Stem Text</h4>
<h4 id="grab">Grab Begin/End of String to Character</h4>
<h4 id="inc">Denote Incomplete End Marks With "|"</h4> 

<h3 id="reshaping">Reshaping the Data</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/adjacency_matrix.html" target="_blank">
    <input type="submit" value="adjacency_matrix"><input type="submit" value="adjmat"> - Takes a Matrix and Generates an Adjacency Matrix
</form>

<form action="http://trinker.github.io/qdap_dev/colSplit.html" target="_blank">
    <input type="submit" value="colSplit"> - Separate a Column Pasted by `paste2`
</form>

<form action="http://trinker.github.io/qdap_dev/colsplit2df.html" target="_blank">
    <input type="submit" value="colsplit2df"><input type="submit" value="lcolsplit2df">  - Wrapper for colSplit that Returns Dataframe(s)
</form>

<form action="http://trinker.github.io/qdap_dev/gantt.html" target="_blank">
    <input type="submit" value="gantt"> - Generate Unit Spans 
</form>

<form action="http://trinker.github.io/qdap_dev/gantt_rep.html" target="_blank">
    <input type="submit" value="gantt_rep"> - Generate Unit Spans for Repeated Measures
</form>

<form action="http://trinker.github.io/qdap_dev/key_merge.html" target="_blank">
    <input type="submit" value="key_merge"> - Merge Demographic Information with Person/Text Transcript
</form>

<form action="http://trinker.github.io/qdap_dev/paste2.html" target="_blank">
    <input type="submit" value="paste2"> - Paste an Unspecified Number Of Text Columns
</form>

<form action="http://trinker.github.io/qdap_dev/prop.html" target="_blank">
    <input type="submit" value="prop"> - Convert Raw Numeric Matrix or Dataframe to Proportions
</form>

<form action="http://trinker.github.io/qdap_dev/qcombine.html" target="_blank">
    <input type="submit" value="qcombine"> - Combine Columns
</form>

<form action="http://trinker.github.io/qdap_dev/sentSplit.html" target="_blank">
    <input type="submit" value="sentSplit"><input type="submit" value="sentCombine"> - Sentence Splitting
</form>

<form action="http://trinker.github.io/qdap_dev/TOT.html" target="_blank">
    <input type="submit" value="TOT"> - Turns of Talk Labelling
</form>

<form action="http://trinker.github.io/qdap_dev/speakerSplit.html" target="_blank">
    <input type="submit" value="speakerSplit"> - Break and Stretch if Multiple Persons per Cell
</form>
</div>

<h3 id="word">Extract/Analyze Words</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/all_words.html" target="_blank">
    <input type="submit" value="all_words"> - Searches Text Column for Words
</form>

<form action="http://trinker.github.io/qdap_dev/bag.o.words.html" target="_blank">
    <input type="submit" value="bag.o.words"><input type="submit" value="breaker"><input type="submit" value="word.split"> - Bag of Words
</form>

<form action="http://trinker.github.io/qdap_dev/common.html" target="_blank">
    <input type="submit" value="common"> - Find Common Words Between Groups
</form>

<form action="http://trinker.github.io/qdap_dev/exclude.html" target="_blank">
    <input type="submit" value="exclude"> - Exclude Elements From a Vector
</form>

<form action="http://trinker.github.io/qdap_dev/ngrams.html" target="_blank">
    <input type="submit" value="ngrams"> - Generate ngrams
</form>

<form action="http://trinker.github.io/qdap_dev/stopwords.html" target="_blank">
    <input type="submit" value="stopwords"> - Remove Stopwords
</form>

<form action="http://trinker.github.io/qdap_dev/strip.html" target="_blank">
    <input type="submit" value="strip"> - Strip Text
</form>

<form action="http://trinker.github.io/qdap_dev/synonyms.html" target="_blank">
    <input type="submit" value="synonyms"><input type="submit" value="syn"> - Search For Synonyms
</form>

<form action="http://trinker.github.io/qdap_dev/word_associate.html" target="_blank">
    <input type="submit" value="word_associate"> - Find Associated Words
</form>

<form action="http://trinker.github.io/qdap_dev/word_diff_list.html" target="_blank">
    <input type="submit" value="word_diff_list"> - Differences In Word Use Between Groups
</form>

<form action="http://trinker.github.io/qdap_dev/word_list.html" target="_blank">
    <input type="submit" value="word_list"> - Raw Word Lists/Frequency Counts
</form>
</div>

<h3 id="coding">Qualitative Coding System</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/cm_code.blank.html" target="_blank">
    <input type="submit" value="cm_code.blank"> - Blank Code Transformation
</form>

<form action="http://trinker.github.io/qdap_dev/cm_code.combine.html" target="_blank">
    <input type="submit" value="cm_code.combine"> - Combine Codes
</form>

<form action="http://trinker.github.io/qdap_dev/cm_code.exclude.html" target="_blank">
    <input type="submit" value="cm_code.exclude"> - Exclude Codes
</form>

<form action="http://trinker.github.io/qdap_dev/cm_code.overlap.html" target="_blank">
    <input type="submit" value="cm_code.overlap"> - Find Co-occurrence Between Codes
</form>

<form action="http://trinker.github.io/qdap_dev/cm_code.transform.html" target="_blank">
    <input type="submit" value="cm_code.transform"> - Transform Codes
</form>

<form action="http://trinker.github.io/qdap_dev/cm_combine.dummy.html" target="_blank">
    <input type="submit" value="cm_combine.dummy"> - Find Co-occurrence Between Dummy Codes
</form>

<form action="http://trinker.github.io/qdap_dev/cm_df.fill.html" target="_blank">
    <input type="submit" value="cm_df.fill"> - Range Coding
</form>

<form action="http://trinker.github.io/qdap_dev/cm_df.temp.html" target="_blank">
    <input type="submit" value="cm_df.temp"> - Break Transcript Dialogue into Blank Code Matrix
</form>

<form action="http://trinker.github.io/qdap_dev/cm_df.transcript.html" target="_blank">
    <input type="submit" value="cm_df.transcript"> - Transcript With Word Number
</form>

<form action="http://trinker.github.io/qdap_dev/cm_df2long.html" target="_blank">
    <input type="submit" value="cm_df2long"> - Transform Codes to Start-End Durations
</form>

<form action="http://trinker.github.io/qdap_dev/cm_distance.html" target="_blank">
    <input type="submit" value="cm_distance"> - Distance Matrix Between Codes
</form>

<form action="http://trinker.github.io/qdap_dev/cm_dummy2long.html" target="_blank">
    <input type="submit" value="cm_dummy2long"> - Convert cm_combine.dummy Back to Long
</form>

<form action="http://trinker.github.io/qdap_dev/cm_long2dummy.html" target="_blank">
    <input type="submit" value="cm_long2dummy"> - Stretch and Dummy Code cm_xxx2long
</form>

<form action="http://trinker.github.io/qdap_dev/cm_range.temp.html" target="_blank">
    <input type="submit" value="cm_range.temp"> - Range Code Sheet
</form>

<form action="http://trinker.github.io/qdap_dev/cm_range2long.html" target="_blank">
    <input type="submit" value="cm_range2long"> - Transform Codes to Start-End Durations
</form>

<form action="http://trinker.github.io/qdap_dev/cm_time.temp.html" target="_blank">
    <input type="submit" value="cm_time.temp"> - Time Span Code Sheet
</form>

<form action="http://trinker.github.io/qdap_dev/cm_time2long.html" target="_blank">
    <input type="submit" value="cm_time2long"> - Transform Codes to Start-End Times
</form>
</div>

<h3 id="counts">Word Counts and Descriptive Statistics</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/distTab.html" target="_blank">
    <input type="submit" value="distTab"> - SPSS Style Frequency Tables
</form>

<form action="http://trinker.github.io/qdap_dev/multiscale.html" target="_blank">
    <input type="submit" value="multiscale"> - Nested Standardization
</form>

<form action="http://trinker.github.io/qdap_dev/outlier.detect.html" target="_blank">
    <input type="submit" value="outlier.detect"> - Detect Outliers in Text
</form>

<form action="http://trinker.github.io/qdap_dev/outlier.labeler.html" target="_blank">
    <input type="submit" value="outlier.labeler"> - Locate Outliers in Numeric String
</form>

<form action="http://trinker.github.io/qdap_dev/pos.html" target="_blank">
    <input type="submit" value="pos"><input type="submit" value="pos.by"><input type="submit" value="pos.tags"> - Parts of Speech Tagging
</form>

<form action="http://trinker.github.io/qdap_dev/question_type.html" target="_blank">
    <input type="submit" value="question_type"> - Count of Question Type
</form>

<form action="http://trinker.github.io/qdap_dev/syllable.sum.html" target="_blank">
    <input type="submit" value="syllable.sum"><input type="submit" value="combo_syllable.sum"><input type="submit" value="polysyllable.sum"><input type="submit" value="syllable.count"> - Syllabication
</form>

<form action="http://trinker.github.io/qdap_dev/tdm.html" target="_blank">
    <input type="submit" value="tdm"><input type="submit" value="dtm"> - Convert/Generate Term Document Matrix or Document Term Matrix
</form>

<form action="http://trinker.github.io/qdap_dev/termco.html" target="_blank">
    <input type="submit" value="termco"><input type="submit" value="term.match"><input type="submit" value="termco.d"><input type="submit" value="termco2mat"> - Search For and Count Terms
</form>

<form action="http://trinker.github.io/qdap_dev/termco.c.html" target="_blank">
    <input type="submit" value="termco.c"> - Combine Columns from a termco Object
</form>

<form action="http://trinker.github.io/qdap_dev/wfm.html" target="_blank">
    <input type="submit" value="wfm"><input type="submit" value="wfdf"><input type="submit" value="wf.combine"><input type="submit" value="wfm.expanded"> - Word Frequency Matrix
</form>

<form action="http://trinker.github.io/qdap_dev/word.count.html" target="_blank">
    <input type="submit" value="word.count"><input type="submit" value="wc"> - Word Counts
</form>

<form action="http://trinker.github.io/qdap_dev/character.count.html" target="_blank">
    <input type="submit" value="character.count"><input type="submit" value="character.table"><input type="submit" value="char.table"> - Character Counts
</form>

<form action="http://trinker.github.io/qdap_dev/word_stats.html" target="_blank">
    <input type="submit" value="word_stats"> - Descriptive Word Statistics
</form>
</div>

<h3 id="measures">Word Measures and Scoring</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/automated_readability_index.html" target="_blank">
    <input type="submit" value="automated_readability_index"><input type="submit" value="coleman_liau"><input type="submit" value="flesch_kincaid"><input type="submit" value="fry"><input type="submit" value="linsear_write"><input type="submit" value="SMOG"> - Readability Measures
</form>

<form action="http://trinker.github.io/qdap_dev/dissimilarity.html" target="_blank">
    <input type="submit" value="dissimilarity"> - Dissimilarity Statistics
</form>

<form action="http://trinker.github.io/qdap_dev/diversity.html" target="_blank">
    <input type="submit" value="diversity"> - Diversity Statistics
</form>

<form action="http://trinker.github.io/qdap_dev/formality.html" target="_blank">
    <input type="submit" value="formality"> - Formality Score
</form>

<form action="http://trinker.github.io/qdap_dev/kullback.leibler.html" target="_blank">
    <input type="submit" value="kullback.leibler"> - Kullback Leibler Statistic
</form>

<form action="http://trinker.github.io/qdap_dev/polarity.html" target="_blank">
    <input type="submit" value="polarity"> - Polarity Score (Sentiment Analysis)
</form>
</div>

<h3 id="visualization">Visualizing Discourse Data</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/gradient_cloud.html" target="_blank">
    <input type="submit" value="gradient_cloud"> - Gradient Word Cloud
</form>

<form action="http://trinker.github.io/qdap_dev/gantt_plot.html" target="_blank">
    <input type="submit" value="gantt_plot"><input type="submit" value="gantt_wrap">  - Gantt Plot
</form>


<form action="http://trinker.github.io/qdap_dev/qheat.html" target="_blank">
    <input type="submit" value="qheat"> - Quick Heatmap
</form>

<form action="http://trinker.github.io/qdap_dev/rank_freq_mplot.html" target="_blank">
    <input type="submit" value="rank_freq_mplot"><input type="submit" value="rank_freq_plot"> - Rank Frequency Plot
</form>

<form action="http://trinker.github.io/qdap_dev/tot_plot.html" target="_blank">
    <input type="submit" value="tot_plot"> - Visualize Word Length by Turn of Talk
</form>

<form action="http://trinker.github.io/qdap_dev/trans.cloud.html" target="_blank">
    <input type="submit" value="trans.cloud"> - Word Clouds by Grouping Variable
</form>

<form action="http://trinker.github.io/qdap_dev/trans.venn.html" target="_blank">
    <input type="submit" value="trans.venn"> - Venn Diagram by Grouping Variable
</form>

<form action="http://trinker.github.io/qdap_dev/word.network.plot.html" target="_blank">
    <input type="submit" value="word.network.plot"> - Word Network Plot
</form>
</div>

<h3 id="id">ID Sentences</h3>

<div class="funs">
The following functions will be utilized in this section (click to view more):    

<form action="http://trinker.github.io/qdap_dev/end_inc.html" target="_blank">
    <input type="submit" value="end_inc"> - Test for Incomplete Sentences
</form>

<form action="http://trinker.github.io/qdap_dev/end_mark.html" target="_blank">
    <input type="submit" value="end_mark"> - Sentence End marks
</form>

<form action="http://trinker.github.io/qdap_dev/imperative.html" target="_blank">
    <input type="submit" value="imperative"> - Intuitively Remark Sentences as Imperative
</form>

<form action="http://trinker.github.io/qdap_dev/NAer.html" target="_blank">
    <input type="submit" value="NAer"> - Replace Missing Values (NA)
</form>
</div>

<h3 id="data">Data Sets</h3>

<div class="textbox", style="background-color: #D6EFD6;"> 
The following data sets are included with qdap (click to view more)
<form action="http://trinker.github.io/qdap_dev/DATA.html" target="_blank">
    <input type="submit" value="DATA"> - Fictitious Classroom Dialogue
</form>

<form action="http://trinker.github.io/qdap_dev/DATA2.html" target="_blank">
    <input type="submit" value="DATA2"> - Fictitious Repeated Measures Classroom Dialogue
</form>

<form action="http://trinker.github.io/qdap_dev/pres_debates2012.html" target="_blank">
    <input type="submit" value="pres_debates2012"> - 2012 U.S. Presidential Debates
</form>

<form action="http://trinker.github.io/qdap_dev/pres_debate_raw2012.html" target="_blank">
    <input type="submit" value="pres_debate_raw2012"> - First 2012 U.S. Presidential Debate
</form>

<form action="http://trinker.github.io/qdap_dev/mraja1.html" target="_blank">
    <input type="submit" value="mraja1"> - Romeo and Juliet: Act 1 Dialogue Merged with Demographics
</form>

<form action="http://trinker.github.io/qdap_dev/mraja1spl.html" target="_blank">
    <input type="submit" value="mraja1spl"> - Romeo and Juliet: Act 1 Dialogue Merged with Demographics and Split
</form>

<form action="http://trinker.github.io/qdap_dev/raj.act.1.html" target="_blank">
    <input type="submit" value="raj.act.1"> - Romeo and Juliet: Act 1
</form>

<form action="http://trinker.github.io/qdap_dev/raj.act.2.html" target="_blank">
    <input type="submit" value="raj.act.2"> - Romeo and Juliet: Act 2
</form>

<form action="http://trinker.github.io/qdap_dev/raj.act.3.html" target="_blank">
    <input type="submit" value="raj.act.3"> - Romeo and Juliet: Act 3
</form>

<form action="http://trinker.github.io/qdap_dev/raj.act.4.html" target="_blank">
    <input type="submit" value="raj.act.4"> - Romeo and Juliet: Act 4
</form>

<form action="http://trinker.github.io/qdap_dev/raj.act.5.html" target="_blank">
    <input type="submit" value="raj.act.5"> - Romeo and Juliet: Act 5
</form>

<form action="http://trinker.github.io/qdap_dev/raj.demographics.html" target="_blank">
    <input type="submit" value="raj.demographics"> - Romeo and Juliet Demographics
</form>

<form action="http://trinker.github.io/qdap_dev/raj.html" target="_blank">
    <input type="submit" value="raj"> - Romeo and Juliet (Unchanged & Complete)
</form>

<form action="http://trinker.github.io/qdap_dev/rajPOS.html" target="_blank">
    <input type="submit" value="rajPOS"> - Romeo and Juliet Split in Parts of Speech
</form>

<form action="http://trinker.github.io/qdap_dev/rajSPLIT.html" target="_blank">
    <input type="submit" value="rajSPLIT"> - Romeo and Juliet (Complete & Split)
</form>
</div>




<h3 id="dict">Dictionaries and Word Lists</h3>

<div class="textbox", style="background-color: #D6EFD6;"> 
The following dictionaries/word lists are utilized by qdap (click to view more)

<form action="http://trinker.github.io/qdapDictionaries//abbreviations.html" target="_blank" ">
    <input type="submit" value="abbreviations"> - Small Abbreviations Data Set
</form>

<form action="http://trinker.github.io/qdapDictionaries//action.verbs.html" target="_blank" ">
    <input type="submit" value="action.verbs"> - Action Word List
</form>

<form action="http://trinker.github.io/qdapDictionaries//adverb.html" target="_blank" ">
    <input type="submit" value="adverb"> - Adverb Word List
</form>

<form action="http://trinker.github.io/qdapDictionaries//BuckleySaltonSWL.html" target="_blank" ">
    <input type="submit" value="BuckleySaltonSWL"> - Buckley & Salton Stopword List
</form>

<form action="http://trinker.github.io/qdapDictionaries//contractions.html" target="_blank" ">
    <input type="submit" value="contractions"> - Contraction Conversions
</form>

<form action="http://trinker.github.io/qdapDictionaries//DICTIONARY.html" target="_blank" ">
    <input type="submit" value="DICTIONARY"> - Nettalk Corpus Syllable Data Set
</form>

<form action="http://trinker.github.io/qdapDictionaries//emoticon.html" target="_blank" ">
    <input type="submit" value="emoticon"> - Emoticons Data Set
</form>

<form action="http://trinker.github.io/qdapDictionaries//env.syl.html" target="_blank" ">
    <input type="submit" value="env.syl"> - Syllable Lookup Environment
</form>

<form action="http://trinker.github.io/qdapDictionaries//env.syn.html" target="_blank" ">
    <input type="submit" value="env.syn"> - Syllable Lookup Environment
</form>

<form action="http://trinker.github.io/qdapDictionaries//increase.amplification.words.html" target="_blank" ">
    <input type="submit" value="increase.amplification.words"> - Amplifying Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//interjections.html" target="_blank" ">
    <input type="submit" value="interjections"> - Interjections
</form>

<form action="http://trinker.github.io/qdapDictionaries//labMT.html" target="_blank" ">
    <input type="submit" value="labMT"> - Language Assessment by Mechanical Turk (labMT) Sentiment Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//NAMES.html" target="_blank" ">
    <input type="submit" value="NAMES"> - First Names and Gender (U.S.)
</form>

<form action="http://trinker.github.io/qdapDictionaries//NAMES_SEX.html" target="_blank" ">
    <input type="submit" value="NAMES_SEX"> - First Names and Predictive Gender (U.S.)
</form>

<form action="http://trinker.github.io/qdapDictionaries//NAMES_LIST.html" target="_blank" ">
    <input type="submit" value="NAMES_LIST"> - First Names and Predictive Gender (U.S.) List
</form>

<form action="http://trinker.github.io/qdapDictionaries//negation.words.html" target="_blank" ">
    <input type="submit" value="negation.words"> - Negating Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//negative.words.html" target="_blank" ">
    <input type="submit" value="negative.words"> - Negative Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//OnixTxtRetToolkitSWL1.html" target="_blank" ">
    <input type="submit" value="OnixTxtRetToolkitSWL1"> - Onix Text Retrieval Toolkit Stopword List 1
</form>

<form action="http://trinker.github.io/qdapDictionaries//positive.words.html" target="_blank" ">
    <input type="submit" value="positive.words"> - Positive Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//preposition.html" target="_blank" ">
    <input type="submit" value="preposition"> - Preposition Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//SYNONYM.html" target="_blank" ">
    <input type="submit" value="SYNONYM"> - Synonyms Data Set
</form>

<form action="http://trinker.github.io/qdapDictionaries//Top100Words.html" target="_blank" ">
    <input type="submit" value="Top100Words"> - Fry's  100 Most Commonly Used English Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//Top200Words.html" target="_blank" ">
    <input type="submit" value="Top200Words"> - Fry's 200 Most Commonly Used English Words
</form>

<form action="http://trinker.github.io/qdapDictionaries//Top25Words.html" target="_blank" ">
    <input type="submit" value="Top25Words"> - Fry's 25 Most Commonly Used English Words
</form>
</div>

<h3 id="install">Installation Issues</h3>

<h4>Java Issues</h3>
  
<p>If there is a discrepancy between the <a href="https://dl.dropbox.com/u/61803503/rjava_warning.txt">R and Java architectures</a> you will have to <a href="http://www.java.com/en/download/manual.jsp">download</a> the appropriate version of Java compatible with the version of R you're using.    

For more see <a href="http://www.r-statistics.com/2012/08/how-to-load-the-rjava-package-after-the-error-java_home-cannot-be-determined-from-the-registry/" target="_blank">Tal Galili's blog post</a> regarding rJava issues.


<hr>
## Acknowledgements

The qdap package was my first R package and a learning process. Several people contributed immensely to my learning. I'd like to particularly thank <a href="https://github.com/Dasonk/" target="_blank">Dason Kurkiewicz</a> for his constant mentoring/assistance in learning the R language, GitHub and package development as well as collaboration on numerous qdap functions. Thank you to <a href="https://twitter.com/bryangoodrich" target="_blank">Bryan Goodrich</a> for his teaching, feedback and collaboration on serveral qdap functions. Thank you to <a href="https://github.com/hadley" target="_blank">Dr. Hadley Wickham</a> for roxygen2, ggplot2, devtools and GitHub repos which I referenced often. I'd also like to thank the many folks at <a href="http://www.talkstats.com/" target="_blank">talkstats.com</a> and <a href="http://stackoverflow.com/questions/tagged/r" target="_blank">stackoverflow.com</a> for their help in answering many R questions related to qdap.

<hr> 

## Improvements

If the reader spots an error in this Vignette or would like to suggest an improvement please contact me @ Tyler Rinker&lt;<a href="mailto:tyler.rinker@gmail.com" target="_blank">tyler.rinker@gmail.com</a>&gt;.  To submit bug reports and feature requests related to the qdap package please visit <a href="https://github.com/trinker/qdap/issues?state=open" target="_blank">qdap's GitHub issues page</a>.

<hr> 

*<em><font size="3">Vignette created with the reports package (<a href="http://github.com/trinker/reports">Rinker, 2013b</a>)</font><em>





## References

- Tyler Rinker,   (2013) qdap: Quantitative Discourse Analysis Package.  <a href="http://github.com/trinker/qdap">http://github.com/trinker/qdap</a>
- Tyler Rinker,   (2013) reports: Package to asssist in report writing.  <a href="http://github.com/trinker/reports">http://github.com/trinker/reports</a>

