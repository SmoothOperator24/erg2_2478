program rainfall
implicit none
integer:: Nmax

write(*,*) 'poses poleis thes?'
read*, Nmax

call File_Reading(Nmax)


contains

Subroutine File_Reading(Nmax)

integer, intent(in)::Nmax
integer ::R(Nmax)
character(15):: T(Nmax)
integer:: i,j

open(10,File='C:\Users\pkalo\Documents\rainfall\data.txt')
 read(10,*)
  do i=1,Nmax
   read(10,*) T(i), R(i)
  end do
close(10)

do j=1,Nmax
    write(*,*) T(j), R(j)
end do

end subroutine

end program 