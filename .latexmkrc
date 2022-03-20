#!/usr/bin/env perl

$latex  = 'uplatex %O %S';
$bibtex = 'upbibtex %O %B';
$biber  = 'biber %O --bblencoding=utf8 -u -U --output_safechars';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;

$aux_dir  = "build";
$out_dir  = "build";

$pdf_previewer = 'open -ga /System/Applications/Preview.app';
