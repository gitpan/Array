#!/usr/local/bin/perl
########################################################################
# PROGRAM: Array::Suffix
#
# Copyright (C), 2003
# Bridget McInnes,      bthomson@d.umn.edu
# University of Minnesota, Duluth
#
# USAGE:
#          %perl interface.pl
#
#
#######################################################################

use Suffix;

if($#ARGV == -1) { print "Please specify filename."; } 

#  create the suffix array accessor
$sarray = Array::Suffix->new();

#  set the token file
$sarray->set_token_file("tokenfile");

#  create the files necessary to run suffix array
$sarray->create_files(@ARGV);

#  set the ngram file name
$sarray->set_ngram_file("hamlet.ngram");

#  Retrieve marginal counts
$sarray->set_marginals(1);

#  Set the ngram size
$sarray->set_ngram_size(2);

#  get the ngrams
$sarray->get_ngrams();

#  remove the miscellaneous file created by the Array::Suffix module
$sarray->remove_files();
