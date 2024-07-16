# correlational-tractography-DSI-Studio
- Shell script to perform correlational tractography (connectometry analysis) in DSI Studio

- DSI Studio allows manual performance of correlational tractography, but for large numbers of study variables, a shell script is handy.
Reference: documentation from https://dsi-studio.labsolver.org/


**--action=cnt:** to perform connectometry 

**--source=PDAM0.md.db.fib.gz:** select the name file of the connectometry database

**--demo=PDAM_DemografGeral.csv:** select the tabular data (study variables)

**--variable_list=1,2,4,5,%%G:** variables 1,2,4,5 are adjusted with multiple linear regression

**--t_threshold=3**:  t-score threshold reflects the statistical strength between the associations (2,5 is default)

**--length_threshold=20:** minimum length of the tracks, in voxel distance

**–-exclude_cb=1:** exclude cerebellum (true)

**--permutation=4000:** set number of random permutations to study variable (to calculate FDR)

**--voi=%%G:** study variable of interest (in this case columns 6 to 19)
 
**> log%%G.txt:** creates log file for each study variable
