program rainfall
implicit none
integer:: Nmax
integer, allocatable :: R(:)
real:: z

write(*,*) 'poses poleis thes?'
read*, Nmax
Allocate (R(Nmax))
call File_Reading(Nmax, R)

z=AverageRain (Nmax,R)
write(*,*) 'O mesos oros broxoptosis einai:', z


contains

Subroutine File_Reading(Nmax, R)
  implicit none
  integer, intent(in) :: Nmax
  integer, intent(inout), allocatable :: R(:)
  character(15) :: T(Nmax)
  integer :: i

  allocate(R(Nmax))  ! Allocate the array inside the subroutine

  open(10, File='C:\Users\pkalo\Documents\rainfall\data.txt')
  read(10, *)
  do i = 1, Nmax
    read(10, *) T(i), R(i)
  end do
  close(10)

  do i = 1, Nmax
    write(*, *) T(i), R(i)
  end do
End Subroutine


function AverageRain(Nmax, R) result(avg)
  implicit none
  integer, intent(in) :: Nmax
  integer, dimension(Nmax), intent(in) :: R
  real :: avg
  integer :: c, tot

  tot = 0

  do c = 1, Nmax
    tot = tot + R(c)
  end do

  avg = tot / Nmax
end function AverageRain


end program 