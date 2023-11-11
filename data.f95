program rainfall
implicit none

integer:: i
character(15):: town(5)
integer:: rain(5)

open(10,File='C:\Users\pkalo\Documents\rainfall\data.txt')
read(10,*)
do i=1,5
read(10,*) town(i), rain(i)
end do
close(10)

do i=1,5
write(*,*) town(i), rain(i)
end do

end program  