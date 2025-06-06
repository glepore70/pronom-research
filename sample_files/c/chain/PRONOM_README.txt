Chain Format
The chain format describes a pairwise alignment that allow gaps in both sequences simultaneously. Each set of chain alignments starts with a header line, contains one or more alignment data lines, and terminates with a blank line. The format is deliberately quite dense.

Example:

    chain 4900 chrY 58368225 + 25985403 25985638 chr5 151006098 - 43257292 43257528 1
     9       1       0
     10      0       5
     61      4       0
     16      0       4
     42      3       0
     16      0       8
     14      1       0
     3       7       0
     48

     chain 4900 chrY 58368225 + 25985406 25985566 chr5 151006098 - 43549808 43549970 2
     16      0       2
     60      4       0
     10      0       4
     70
Header Lines

    chain score tName tSize tStrand tStart tEnd qName qSize qStrand qStart qEnd id 
The initial header line starts with the keyword chain, followed by 11 required attribute values, and ends with a blank line. The attributes include:

https://genome.ucsc.edu/goldenPath/help/chain.html
