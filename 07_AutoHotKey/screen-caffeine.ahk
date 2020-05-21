#Persistent
SetTimer, MoveMouse

MoveMouse:
If ( A_TimeIdle > 30000 ) {
  MouseMove, 1 , 1,, R
  MouseMove, -1,-1,, R
}
Return