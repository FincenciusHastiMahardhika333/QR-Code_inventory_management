Close All
Select a
Use slip1 && wpunit
Select b
Use slip2 && weight
Select c
Use slip3 && weight
Store 0 To xrec
Select a
Do While !Eof()
STORE 0 TO XUNIT,XISSUED,XRECEIVED
	Store Alltrim(a.orderno) To xorder
	Store Recno() To xrec
	Select a
	Sum wpunit*tunit To xunit For Alltrim(a.orderno)==Alltrim(xorder)
	WAIT WINDOW STR(XUNIT)+'    '+XORDER
	Select b
	Sum weight To xissued For Alltrim(b.orderno)==Alltrim(xorder) .and. !EMPTY(b.sendto)
	WAIT WINDOW XISSUED
	Select c
	Sum weight To xreceived For Alltrim(c.orderno)==Alltrim(xorder) .and. EMPTY(c.sendto)
	WAIT WINDOW XRECEIVED
	xbalance=(xunit-xissued)+xreceived
	Select a
	Go xrec
	Replace balance With xbalance
	Select a
	Skip 1
Enddo