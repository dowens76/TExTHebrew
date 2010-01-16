#!/usr/bin/perl

my $outputFilename = 'othebrew.tei.xml'; 

# Create output file
open (OUTF,">$outputFilename") or die "Could not open file othebrew.tei.xml for writing.";

print OUTF "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<TEI xmlns=\"http://www.crosswire.org/2008/TEIOSIS/namespace\"\n     xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n     xsi:schemaLocation=\"http://www.crosswire.org/2008/TEIOSIS/namespace\n     http://www.crosswire.org/osis/teiP5osis.1.2.xsd\">\n\n<teiHeader>\n<fileDesc>\n<titleStmt>\n<title>Translatable Exegetical Tools Old Testament Hebrew Lexicon</title>\n<author>Daniel Owens</author>\n</titleStmt>\n<publicationStmt>\n<availability><p>This work is made available under a Creative Commons Attribution-ShareAlike 3.0 Unported license.</p>\n<p>For details on what this license entails, see http://creativecommons.org/licenses/by-sa/3.0/legalcode</p></availability>\n</publicationStmt>\n<sourceDesc><p>http://www.textonline.org</p></sourceDesc>\n</fileDesc>\n<encodingDesc>\n<projectDesc><p>This Old Testament Hebrew lexicon is a collaborative effort to create a modern replacement to Strong's Hebrew dictionary. Many entries are based on Strong's entries. If you would like to contribute to this project, visit http://www.textonline.org for more information.</p></projectDesc>\n</encodingDesc>\n</teiHeader>\n\n<text>\n<body>\n";

# Get input text
open (INF, 'othebrew.txt');
my @data = <INF>;
close (INF);

my $line;

foreach $line (@data) {

	$line =~ s/\\lx\s*(.+)/<entryFree n=\"$1\">/g; 
	$line =~ s/\\lk\s*(.+)/<orth>$1<\/orth>/g;
	$line =~ s/\\lf\s\n//g;
	$line =~ s/\\lf\s*(.+)/<orth>$1<\/orth>/g;
	$line =~ s/\\ph\s*(.+)/<orth type=\"trans\" rend=\"bold\">$1<\/orth>\n<def>/g; 
	$line =~ s/\\sn\s*(.)\n/<br \/>$1\. /g;
	$line =~ s/\\ge\s*(.+)/$1/g; 
	$line =~ s/\\nt\s*(.+)/$1/g;
	
#	$line =~ s/\\cf\s*(.+)/<ref target=\"Strong:$1\">$1<\/ref>/g;
	$line =~ s/\\cf\s*(.+)\n//g;
	
	$line =~ s/\\dt\s*(.*)/<\/def>\n<\/entryFree>/g;
	$line =~ s/\\frq\s\n//g;
	$line =~ s/\\frq\s*(.+)/($1)/g;
	
	#$line =~ s///g;
	#$line =~ s///g;

	print OUTF "$line";
}

print OUTF "\n</body>\n</text>\n</TEI>";

close (OUTF);
