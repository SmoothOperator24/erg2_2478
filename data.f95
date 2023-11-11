program rainfall
implicit none

integer:: i, Nmax, st

character(15):: town(50)
integer:: rain(50)

Nmax=0
i=0
open(10,File='C:\Users\pkalo\Documents\rainfall\data.txt')
 read(10,*)
  do
   i=i+1
   read(10,*,iostat=st) town(i), rain(i)
   if (st==-1) exit
   Nmax=Nmax+1  
  end do
close(10)

do i=1,Nmax
    write(*,*) town(i), rain(i)
end do

end program  