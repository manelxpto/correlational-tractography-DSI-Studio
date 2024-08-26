# correlational-tractography-DSI-Studio
- Bash script to perform correlational tractography (connectometry analysis) in DSI Studio

- DSI Studio allows manual performance of correlational tractography, but for large numbers of study variables, a bash/shell script is handy.



Understanding the bash code:
**--action=cnt:** performs group connectometry 

**--source=PDAM0.md.db.fib.gz:** select the name file of the connectometry database

**--demo=PDAM_DemografGeral.csv:** select the tabular data (study variables)

**--variable_list=1,2,4,5,%%G:** variables 1,2,4 and 5 (age, gender, etc) are adjusted with multiple linear regression

**--t_threshold=3**:  t-score threshold reflects the statistical strength between the associations (2,5 is default)

**--length_threshold=20:** minimum length of the tracks, in voxel distance

**–-exclude_cb=1:** exclude cerebellum (true)

**--permutation=4000:** set number of random permutations to study variable (to calculate FDR)

**--voi=%%G:** variable of interest (%%G) (in this case columns 6 to 19, include neurpsychological test scores, dCA, VRCO2 and NVC)
 
**> log%%G.txt:** creates log file for each study variable

Reference: DSI Studio documentation and Forum https://dsi-studio.labsolver.org/
