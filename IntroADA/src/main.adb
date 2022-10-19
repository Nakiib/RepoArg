with ada.Text_IO, Week, Operations, Week.child, week.child.grandChild, Week.child_2;
use ada.Text_IO, Week, Week.child, week.child.grandChild, Week.child_2;
procedure Main is
   A : integer := 10;

begin
   --  Insert code here.
   --  Put_Line("Today is : "&Tue);
   --
   --  A:=Operations.Increment_by(I    => A,
   --                          Incr => 9);
   --  Put_Line(A'Image);
   Put_Line(get_last_of_the_week);
   Put_Line(get_First_of_the_week);
   Put_Line(Get_the_third_one);

   null;
end Main;
