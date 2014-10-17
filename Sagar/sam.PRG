CREATE TABLE Test FREE ;
   (Object C(10), Color C(16), SqFt n(6,2))

SCATTER MEMVAR
m.Object="Box"
m.Color="Red"
m.SqFt=12.5
APPEND BLANK
GATHER MEMVAR
BROWSE
