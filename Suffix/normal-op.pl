#!/usr/local/bin/perl
use Suffix;


# Sub Test 1: check token using an eclectic collection of token definitions ;)

print "Sub Test 1: Checking tokens\n";

# Subtest 1a: using /\w+/

# input qfile 
$TESTFILE = "TESTING/test-1.txt";


# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit; 
}

# input token definition file
$TOKENFILE = "TESTING/test-1.sub-1-a.token.txt";

if (!(-e $TOKENFILE)) {
    print "File $TOKENFILE does not exist... aborting\n";
    exit;
}


# required output file
$TARGETFILE = "TESTING/test-1.sub-1-a.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test! 
print "Subtest 1-a\n";
$test1a = Array::Suffix->new();
$test1a->set_token_file($TOKENFILE);
$test1a->create_files($TESTFILE);
$test1a->set_marginals(1);
$test1a->get_ngrams();
$test1a->remove_files();

#  Get the ngram file
$DESTFILE = $test1a->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 1b: using /[.,;:']/

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# input token definition file
$TOKENFILE = "TESTING/test-1.sub-1-b.token.txt";

if (!(-e $TOKENFILE)) {
    print "File $TOKENFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-1-b.reqd";   

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 1-b\n";
$test1b = Array::Suffix->new();
$test1b->set_token_file($TOKENFILE);
$test1b->create_files($TESTFILE);
$test1b->set_marginals(1);
$test1b->get_ngrams();
$test1b->remove_files();

#  Get the ngram file
$DESTFILE = $test1b->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 1c: using following regexs:

#   /th/
#   /nd/
#   /\w+/

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# input token definition file
$TOKENFILE = "TESTING/test-1.sub-1-c.token.txt";

if (!(-e $TOKENFILE)) {
    print "File $TOKENFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-1-c.reqd";   

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 1-c\n";
$test1c = Array::Suffix->new();
$test1c->set_token_file($TOKENFILE);
$test1c->create_files($TESTFILE);
$test1c->set_marginals(1);
$test1c->get_ngrams();
$test1c->remove_files();

#  Get the ngram file
$DESTFILE = $test1c->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 1d: using following regex: /.../

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# input token definition file
$TOKENFILE = "TESTING/test-1.sub-1-d.token.txt";

if (!(-e $TOKENFILE)) {
    print "File $TOKENFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-1-d.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 1-d\n";
$test1d = Array::Suffix->new();
$test1d->set_token_file($TOKENFILE);
$test1d->create_files($TESTFILE);
$test1d->set_marginals(1);
$test1d->get_ngrams();
$test1d->remove_files();

#  Get the ngram file
$DESTFILE = $test1d->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 1e: using following regex: /.../

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit;
}

# input token definition file
$TOKENFILE = "TESTING/test-1.sub-1-e.token.txt";

if (!(-e $TOKENFILE)) {
    print "File $TOKENFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-1-e.reqd";   

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 1-e\n";
$test1e = Array::Suffix->new();
$test1e->set_token_file($TOKENFILE);
$test1e->create_files($TESTFILE);
$test1e->set_marginals(1);
$test1e->get_ngrams();
$test1e->remove_files();

#  Get the ngram file
$DESTFILE = $test1e->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 1f: using following regex: /.../

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit; 
}

# input token definition file
$TOKENFILE = "TESTING/test-1.sub-1-f.token.txt";

if (!(-e $TOKENFILE)) {
    print "File $TOKENFILE does not exist... aborting\n";
	exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-1-f.reqd";   

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 1-f\n";
$test1f = Array::Suffix->new();
$test1f->set_token_file($TOKENFILE);
$test1f->create_files($TESTFILE);
$test1f->set_marginals(1);
$test1f->get_ngrams();
$test1f->remove_files();

#  Get the ngram file
$DESTFILE = $test1f->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Sub Test 2 : Checking ngram size

print "SubTest 2 : Checking ngram sizes\n";

# Subtest 2a: testing unigrams

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-2-a.reqd";   

# check if this file exists. if not, quit!  
if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit; 
}

# now the test!
print "Subtest 2-a\n";
$test2a = Array::Suffix->new();
$test2a->create_files($TESTFILE);
$test2a->set_ngram_size(1);
$test2a->get_ngrams();
$test2a->remove_files();

#  Get the ngram file
$DESTFILE = $test2a->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 2b: testing trigrams

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-2-b.reqd";   

# check if this file exists. if not, quit!  
if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit; 
}

# now the test!
print "Subtest 2-b\n";
$test2b = Array::Suffix->new();
$test2b->create_files($TESTFILE);
$test2b->set_ngram_size(3);
$test2b->set_marginals(1);
$test2b->get_ngrams();
$test2b->remove_files();

#  Get the ngram file
$DESTFILE = $test2b->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 2c: testing 4-grams

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-2-c.reqd";   

# check if this file exists. if not, quit!  
if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit; 
}

# now the test!
print "Subtest 2-c\n";
$test2c = Array::Suffix->new();
$test2c->create_files($TESTFILE);
$test2c->set_ngram_size(4);
$test2c->set_marginals(1);
$test2c->get_ngrams();
$test2c->remove_files();

#  Get the ngram file
$DESTFILE = $test2c->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 3: check --stop

print "Subtest 3: Checking set_stop_list\n";

# Subtest 3a: checking to ensure stop list works

# input file 
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# stop file
$STOPFILE = "TESTING/test-1.sub-3.stop.txt";

if (!(-e $STOPFILE)) {
    print "File $STOPFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-3-a.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 3-a\n";
$test3a = Array::Suffix->new();
$test3a->create_stop_list($STOPFILE);
$test3a->create_files($TESTFILE);
$test3a->set_ngram_size(2);
$test3a->set_marginals(1);
$test3a->get_ngrams();
$test3a->remove_files();

#  Get the ngram file
$DESTFILE = $test3a->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 3b: using --stop in default mode when @stop.mode is not specified 

# input file
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit;
}

# stop file
$STOPFILE = "TESTING/test-1.sub-3-b.stop.txt";

if (!(-e $STOPFILE)) {
    print "File $STOPFILE does not exist... aborting\n";
	exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-3-b.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 3-b\n";
$test3b = Array::Suffix->new();
$test3b->create_stop_list($STOPFILE);
$test3b->create_files($TESTFILE);
$test3b->set_ngram_size(2);
$test3b->set_marginals(1);
$test3b->get_ngrams();
$test3b->remove_files();

#  Get the ngram file
$DESTFILE = $test3b->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 3c: using --stop in OR mode
# input file
$TESTFILE = "TESTING/test-1.txt";

# check if this file exists. if not, quit!
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit;
}

# stop file
$STOPFILE = "TESTING/test-1.sub-3-c.stop.txt";

if (!(-e $STOPFILE)) {
    print "File $STOPFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-3-c.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 3-c\n";
$test3c = Array::Suffix->new();
$test3c->create_stop_list($STOPFILE);
$test3c->create_files($TESTFILE);
$test3c->set_stop_mode("OR");
$test3c->set_ngram_size(2);
$test3c->set_marginals(1);
$test3c->get_ngrams();
$test3c->remove_files();

#  Get the ngram file
$DESTFILE = $test3c->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 4: check set_frequency and remove functions

print "Subtest 4: Checking frequency and remove\n";

# Subtest 4a: using set_frequency(2)

# input file 
$TESTFILE = "TESTING/test-1.sub-4.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-4-a.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 4-a\n";
$test4a = Array::Suffix->new();
$test4a->create_files($TESTFILE);
$test4a->set_frequency(2);
$test4a->set_ngram_size(2);
$test4a->set_marginals(1);
$test4a->get_ngrams();
$test4a->remove_files();

#  Get the ngram file
$DESTFILE = $test4a->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 4b: using set_frequency(4)

# input file 
$TESTFILE = "TESTING/test-1.sub-4.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-4-b.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 4-b\n";
$test4b = Array::Suffix->new();
$test4b->create_files($TESTFILE);
$test4b->set_frequency(4);
$test4b->set_ngram_size(2);
$test4b->set_marginals(1);
$test4b->get_ngrams();
$test4b->remove_files();

#  Get the ngram file
$DESTFILE = $test4b->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 4c: using --remove 2

# input file 
$TESTFILE = "TESTING/test-1.sub-4.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-4-c.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
	exit;
}

# now the test!
print "Subtest 4-c\n";
$test4c = Array::Suffix->new();
$test4c->create_files($TESTFILE);
$test4c->set_remove(2);
$test4c->set_marginals(1);
$test4c->get_ngrams();
$test4c->remove_files();

#  Get the ngram file
$DESTFILE = $test4c->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");


# Subtest 5d: using --remove 4

# input file 
$TESTFILE = "TESTING/test-1.sub-4.txt";

# check if this file exists. if not, quit!  
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n"; 
    exit; 
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-4-d.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 4-d\n";
$test4d = Array::Suffix->new();
$test4d->create_files($TESTFILE);
$test4d->set_remove(4);
$test4d->set_ngram_size(2);
$test4d->set_marginals(1);
$test4d->get_ngrams();
$test4d->remove_files();

#  Get the ngram file
$DESTFILE = $test4d->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 5 : Check set_nontoken(FILE)
print "Subtest 5: Checking set_nontoken(FILE)\n";

# Subtest  5a: using single nontoken regex /(o|O)(n|N)/ to remove every
# occurrence of on,On,ON,oN from the input stream

# input file
$TESTFILE = "TESTING/test-1.txt";
$NONTOKENFILE = "TESTING/test-1.sub-5-a.nontoken.txt";

# check if this file exists. if not, quit!
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
    exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-5-a.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
    exit;
}

# now the test!
print "Subtest 5-a\n";
$test5a = Array::Suffix->new();
$test5a->set_nontoken_file($NONTOKENFILE);
$test5a->create_files($TESTFILE);
$test5a->set_marginals(1);
$test5a->get_ngrams();
$test5a->remove_files();

#  Get the ngram file
$DESTFILE = $test5a->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");

# Subtest 5b: using following nontoken regexs
# /i./
# /.e/
# /[A-Z]/
# To remove every occurrence of 
# 'i' and its following character 
# 'e' and its preceding character 
# and any uppercase letter

# input file
$TESTFILE = "TESTING/test-1.txt";
$NONTOKENFILE = "TESTING/test-1.sub-5-b.nontoken.txt";

# check if this file exists. if not, quit!
if (!(-e $TESTFILE)) {
    print "File $TESTFILE does not exist... aborting\n";
	exit;
}

# required output file
$TARGETFILE = "TESTING/test-1.sub-5-b.reqd";

if (!(-e $TARGETFILE)) {
    print "File $TARGETFILE does not exist... aborting\n";
	exit;
}

# now the test!
print "Subtest 5-b\n";
$test5b = Array::Suffix->new();
$test5b->set_nontoken_file($NONTOKENFILE);
$test5b->create_files($TESTFILE);
$test5b->set_marginals(1);
$test5b->get_ngrams();
$test5b->remove_files();

#  Get the ngram file
$DESTFILE = $test5b->get_ngram_file();

#compare the actual output with the required output
system("sort $DESTFILE > one");
system("sort $TARGETFILE > two");
system("diff one two > differences");
if( -z "differences") {
    print "Status: OK\!\! Output matches target output (as provided in $TARGETFILE)\n";
}
else {
    print "Status: ERROR\!\! Following differences exist between $DESTFILE and $TARGETFILE :\n";
    system("cat differences");
    exit;
}
system("/bin/rm -f one two differences"); 
system("/bin/rm -f $DESTFILE");
