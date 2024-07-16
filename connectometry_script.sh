#!/bin/bash

for /l %%G in (6,1,29) do (
dsi_studio 
--action=cnt 
--source=PDAM0.md.db.fib.gz 
--demo=PDAM_DemografGeral.csv 
--variable_list=1,2,4,5,%%G 
--t_threshold=3 
--length_threshold=20 
–-exclude_cb=1 
--permutation=4000 
--voi=%%G 
> log%%G.txt
)
