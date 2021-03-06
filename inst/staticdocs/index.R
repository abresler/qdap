library(staticdocs)
list(
  index = list(
    sd_section("Project Template",
      "A function to generate a project template of folders, scripts and documents.",  
      c(
        "new_project"
      )
    ),
    sd_section("Import/Export Data",
      "Functions for importing data and exporting output.",  
      c(
        "condense",        
        "dir_map",
        "mcsv_r",
        "read.transcript"      
      )
    ),
    sd_section("Cleaning/Parsing",
      "Function to clean and parse text data.",
      c(
        "bracketX",
        "beg2char",
        "capitalizer",        
        "clean",
        "incomplete.replace",
        "multigsub",
        "name2sex",
        "potential_NA",
        "qprep",
        "replace_abbreviation",
        "replace_contraction",
        "replace_number",
        "replace_symbol",
        "rm_row",
        "scrubber",
        "space_fill",
        "spaste",
        "stemmer",
        "Trim"
      )
    ),
    sd_section("Viewing", 
      "Functions to aid data viewing.", 
      c(
        "htruncdf",
        "left.just",
        "Search",        
        "strWrap"
      )
    ),
    sd_section("Reshaping",
      "Functions to reshape data.",
      c(
        "adjacency_matrix",
        "colSplit",
        "colsplit2df",
        "gantt",
        "gantt_rep",
        "key_merge",
        "paste2",
        "prop",
        "qcombine",
        "sentSplit",
        "speakerSplit"
      )
    ),
    sd_section("Word Extraction/Comparison", 
      "Functions for working with dialogue at the word level.",
      c(
        "all_words",
        "bag.o.words",
        "common",
        "exclude",
        "ngrams",
        "stopwords",
        "strip",
        "synonyms",
        "word_associate",
        "word_diff_list",
        "word_list"
      )
    ),
    sd_section("Coding Tools",
      "cm functions are code matrix functions.  These functions are used for coding and reshaping transcripts, dataframes, and time spans for further use in analysis and visualization.",
      c(
        "cm_code.blank",
        "cm_code.combine",
        "cm_code.exclude",
        "cm_code.overlap",
        "cm_code.transform",
        "cm_combine.dummy",
        "cm_df.fill",
        "cm_df.temp",
        "cm_df.transcript",
        "cm_df2long",
        "cm_distance",
        "cm_dummy2long",
        "cm_long2dummy",
        "cm_range.temp",
        "cm_range2long",
        "cm_time.temp",
        "cm_time2long"

      )
    ),
    sd_section("Counts/Descriptives",
      "Functions for word counts and descriptive statistics.",
      c(
        "distTab",
        "multiscale",
        "outlier.detect",
        "outlier.labeler",
        "pos",
        "question_type",
        "syllable.sum",
        "tdm",        
        "termco",
        "termco.c",
        "wfm",
        "word.count",
        "word_stats"
      )
    ),
    sd_section("Measures",
      "Word measures and scoring.",
      c(
        "automated_readability_index",
        "dissimilarity",
        "diversity",
        "formality",
        "kullback.leibler",
        "polarity"
      )
    ),
    sd_section("qdap Tools", 
      "Tools to assist in transcript/discourse analysis.",
      c(
        "blank2NA",
        "duplicates",
        "hash",
        "hms2sec",
        "lookup",
        "qcv",
        "replacer",
        "sec2hms",        
        "text2color",
        "url_dl",
        "v.outer"
      ) 
    ),
    sd_section("Identification", 
      "Identify sentence elements/types.",
      c(
        "end_inc",
        "end_mark",
        "imperative",
        "NAer"
      )
    ),
    sd_section("Visualization", 
      "Plotting functions.",
      c(
        "gradient_cloud",
        "gantt_plot",
        "gantt_wrap",
        "plot.character.table",
        "plot.diversity",
        "plot.formality",
        "plot.polarity",
        "plot.pos.by",
        "plot.question_type",
        "plot.termco",
        "plot.word_stats",
        "qheat",
        "rank_freq_mplot",
        "tot_plot",
        "trans.cloud",
        "trans.venn",
        "word.network.plot"
      )
    ),
    sd_section("Print Functions", "",
      c(
        "print.adjacency_matrix",
        "print.character.table",
        "print.cm_distance",
        "print.colsplit2df",
        "print.dissimilarity",
        "print.diversity",
        "print.formality",
        "print.kullback.leibler",
        "print.ngrams",
        "print.polarity",
        "print.pos",
        "print.pos.by",
        "print.question_type",
        "print.termco",
        "print.v.outer",
        "print.word_associate",
        "print.word_list",
        "print.word_stats"
      )
    ),
    sd_section("Data", 
      "Data sets included in qdap and used in examples.",
      c( 
        "DATA",
        "DATA2",
        "pres_debates2012",
        "pres_debate_raw2012",
        "mraja1",
        "mraja1spl",
        "raj.act.1",
        "raj.act.2",
        "raj.act.3",
        "raj.act.4",
        "raj.act.5",
        "raj.demographics",
        "raj",
        "rajPOS",
        "rajSPLIT"
      )
    )

))

