program main
  implicit none

  integer :: N
  integer, allocatable :: ENTRY_POINT(:)
  character(len=16) :: temp_str
  character(len=4) :: delimiter_str
  character(len=256) :: output_str
  integer :: i
  integer :: j
  integer::temp

  ! Establish length of the allocatable array
  N = 11
  allocate(ENTRY_POINT(N))

  ! Initialise entry point array
  ENTRY_POINT = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2]

  do i = 1, N
    do j = 1, (N-1)
      if (ENTRY_POINT(j) > ENTRY_POINT(j + 1)) then
        temp = ENTRY_POINT(j)
        ENTRY_POINT(j) = ENTRY_POINT(j + 1)
        ENTRY_POINT(j + 1) = temp
      end if 
    end do
  end do
 
 
  ! Begin construction of output string
  output_str = ''

  do i = 1, size(ENTRY_POINT)
      ! I have included this if statement to avoid strange formatting with a comma appearing
      ! at the beginning of the array output string. Not necessary but I'm enjoying
      ! Fortran so I figured I might as well add it!
      if (i == 1) then
        delimiter_str = ''
      else
        delimiter_str = ', '
      end if

      ! Converts entry point integer to string and writes it
      ! to the temporary string
      write(temp_str, '(I0)') ENTRY_POINT(i)

      ! Concatenate temporary string to output string
      output_str = trim(output_str) // delimiter_str // trim(temp_str)
  end do

  print *, 'SORTED:', trim(output_str)

  deallocate(ENTRY_POINT)
end program main
