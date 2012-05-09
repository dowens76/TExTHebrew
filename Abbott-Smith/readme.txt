SUMMARY

Abbot-Smith is a project to mark up the G. Abbott-Smith's A MANUAL GREEK LEXICON OF THE NEW TESTAMENT(New York: Scribner's,1922) using TEI. Contributors are welcome. This document records important source information and markup standards.

SOURCE AND COPYRIGHT INFORMATION

The PDF file with a text layer (manualgreeklexic00abborich.pdf) was obtained from http://archive.org/details/manualgreeklexic00abborich. Certain restrictions apply to the use of this file. These are included in the PDF file.

The lexicon (abbott-smith.tei.xml), including the marked up version in this repository, is in the public domain. 

CONTRIBUTOR INFORMATION

All are welcome to contribute to this markup project. Those interested should send an email to editors at textonline dot org (deleting the spaces and replacing "at" and "dot" with the appropriate characters). 

MARKUP INFORMATION

All text from the lexicon will be included and marked up using CrossWire.org's iteration of TEI XML, which supports several features of OSIS XML that are relevant to biblical studies (especially biblical references). For helpful documentation on this iteration of TEI, see http://www.crosswire.org/wiki/TEI_Dictionaries. For the schema definition, see http://www.crosswire.org/OSIS/teiP5osis.1.4.xsd.

Note that until markup is complete, the file will not validate because the <body> and <div> elements cannot contain text (only certain elements), but the text layer provides such text. However, a validator can be used to identify other problems in the document and the raw text be deleted if one wishes to work with text that has already been cleaned up.

MARKUP PRACTICES

To contribute you must be familiar with the basics of how XML works. For an introduction, see http://www.w3schools.com/xml/xml_whatis.asp. 

This project follows several markup practices. Here are several of the most important ones:

1. Structure of Lexicon Entries 
	a. Every entry is nested in an <entry> element with an id (@n), which should be the Greek lemma. If there are multiple options at the head of the entry, choose the first.
	b. Nested within <entry> are several elements: <form>, <gramGrp>, and <sense>. The first two only appear once. The last one may appear multiple times if there are multiple sense numbers. Note that all text in the entry must fall within one of these three elements, not directly under <entry>. 
3. Specific Elements of Each Entry
	a. <form>
		i. Typically this will include all information prior to the first definition. 
		ii. The form of the word should be contained within <orth>. 
		iii. Additional text may also appear outside <orth>.
	b. <gramGrp>
		i. This element is for gramatical information that does not involve the form of the word. 
		ii. This normally will have nothing in it, in which case it can be dropped or included in this way: <gramGrp/>.
		ii. If some grammatical information is given in the entry such as part of speech <pos> or some other subcategorization <subc>, it would be marked up in this way: <gramGrp><pos>verb</pos>, <subc>intransitive</subc></gramGrp>
	c. <sense>
		i. Anything related to the meaning of a word should occur in this element. 
		ii. Definitions (usually anything in italics) should also be within <def>.
		iii. If sense numbers are given, include @n in <sense> and the text of the sense number as it is written in the lexicon. 
		iv. Multiple sense elements are allowed within the same entry.
4. Other Elements
	a. <pb />
		i. All page breaks are included in the file. 
		ii. After cleaning up a page, add your initials to the commented @typed field after the <pb> element. After checking a page, do the same under @checked. This is not valid TEI, so the attributes are commented out outside the <pb> element.
		iii. A completed page should look like this: <pb n="1" /> <!-- typed="ABC" checked="XYZ" -->
	b. <foreign>
		i. All text is assumed to be English (the analysis language) unless otherwise specified.
		ii. The <foreign> element can be used for this purpose.
		iii. Examples include: <foreign xml:lang="grc">Ἀαρών</foreign> and <foreign xml:lang="heb">אַהֲרוֹן</foreign>. Use "grc" for Greek and "heb" for Hebrew.
	c. <ref>
		i. Biblical references should be marked up using this element. 
		ii. Although Abbott-Smith uses superscript numbers for verses, this project does not. Instead, we use a colon to separate chapter and verse. 
		iii. For biblical book names in @osisRef, use SBL abbreviations. See http://www.textonline.org/textstyleguidelines.
		iv. Examples include: <ref osisRef="Luke.1.5">Lk 1:5</ref> and <ref osisRef="Mark.1.14-Mark.1.15">Mk 1:14-15</ref>.
5. Recurring Text
	a. For a dagger use † (see Preface of the lexicon for the meaning of this symbol)
	b. For < use &lt;
	c. For > use &rt;
	d. For superscript, use: <hi rend="superscript">
	e. For subscript, use: <hi rend="subscript">
	f. For an ampersand use &amp;
	g. For paragraphs use <p>

EXAMPLE ENTRIES

<entry n="α"> 
 	<form>
 		<orth>
 			<foreign xml:lang="grc">Α, α, ἄλφα</foreign>
 		</orth> (q.v.), 
 		<foreign xml:lang="grc">τό</foreign>, indecl., 
 	</form>
 	<gramGrp/>
 	<sense><def>alpha</def>, the first letter of the Greek alphabet. As a numeral, <foreign xml:lang="grc">α ́</foreign> = 1, <foreign xml:lang="grc">α</foreign> = 1000. As a prefix, it appears to have at least two and perhaps three distinct senses:
 	</sense>
 	<sense n="1">
 		1. <foreign xml:lang="grc">ἀ-</foreign> (before a vowel, <foreign xml:lang="grc">ἀν-</foreign>) <def>negative</def>, as in <foreign xml:lang="grc">ἄ-γνωστος, ἄ-δικος</foreign>.
 	</sense> 
 	<sense n="2">
 		2. <foreign xml:lang="grc">ἀ-, ἁ-</foreign> <def>copulative</def>, indicating community and fellowship, as in <foreign xml:lang="grc">ἁ-πλοῦς, ἀ-κολουθέω, ἀ-δελφός</foreign>.
 	</sense> 
 	<sense n="3">3. An intensive force (LS, s. <foreign xml:lang="grc">α</foreign>), as in <foreign xml:lang="grc">ἀ-τενίζω</foreign> is sometimes assumed (but v. Boisacq, s.v.).</sense> 
</entry>
<entry n="Ἀαρών"> 
	<form>
		<orth>
 			<foreign xml:lang="grc">Ἀαρών</foreign>
 		</orth> (Heb. <foreign xml:lang="heb">אַהֲרוֹן</foreign>), indecl. (in FlJ, <foreign xml:lang="grc">-ῶνος</foreign>),
 	</form>
 	<gramGrp/>
 	<sense><def>Aaron</def> (<ref osisRef="Exod.4.14">Ex 4:14</ref>, al.): <ref osisRef="Luke.1.5">Lk 1:5</ref>, <ref osisRef="Acts.7.40">Ac 7:40</ref>, <ref osisRef="Heb.5.4">He 5:4</ref>, <ref osisRef="Heb.7.11">7:11</ref>, <ref osisRef="Heb.9.4">9:4</ref>.† 
 	</sense>
</entry> 

ENTRY TEMPLATE

  <entry n=""> 
 	<form>
 		<orth>
 			<foreign xml:lang="grc"></foreign>
 		</orth>
 	</form>
 	<gramGrp></gramGrp>
 	<sense>
 	<def></def>
 	<ref osisRef=""></ref>
 	</sense>
 	<sense n="1">
 		1. †
 	</sense> 
 </entry> 
 
 CHANGELOG
 
 2012/05/09 - Initial upload with frontmatter and page numbers marked up
