# This code will create a Perl script, which is a mental health support group.

#!/usr/bin/perl 
use strict; 
use warnings;

# Initializing the variables 
my $name; 
my $age; 
my $gender; 
my $topic;

# Opening the file to which the output will be written 
open(my $fileHandle, ">", "mental_support_group.txt") or die "Could not open file: $!"; 

# Writing the initial file header
print $fileHandle "Welcome to the Mental Health Support Group \n\n";

# Prompting the user for their name 
print "What is your name? ";
$name = <STDIN>;
chomp $name; 
print $fileHandle "Name: $name \n"; 

# Prompting the user for their age 
print "What age are you? "; 
$age = <STDIN>; 
chomp $age;
print $fileHandle "Age: $age \n";

# Prompting the user for their gender
print "What is your gender? "; 
$gender = <STDIN>; 
chomp $gender;
print $fileHandle "Gender: $gender \n";

# Prompting the user for the topic of discussion
print "What topic would you like to discuss? ";
$topic = <STDIN>; 
chomp $topic;
print $fileHandle "Topic: $topic \n\n";

# Creating a loop to allow for multiple users
while(1) { 

# Prompting the user for their name for the next user 
print "What is the next user's name? "; 
$name = <STDIN>; 
chomp $name; 
print $fileHandle "Name: $name \n";

# Prompting the user for their age
print "What age is the next user? "; 
$age = <STDIN>; 
chomp $age;
print $fileHandle "Age: $age \n";

# Prompting the user for their gender
print "What is the next user's gender? "; 
$gender = <STDIN>; 
chomp $gender;
print $fileHandle "Gender: $gender \n";

# Prompting the user for the topic of discussion
print "What topic would the next user like to discuss? ";
$topic = <STDIN>; 
chomp $topic;
print $fileHandle "Topic: $topic \n\n";

# Prompting the user to see if they want to add another user to the support group 
print "Do you want to add another user (y/n)? ";
my $response = <STDIN>; 
chomp $response;
if ($response eq "n") { 
    last; 
}

}

# Closing the file 
close $fileHandle;