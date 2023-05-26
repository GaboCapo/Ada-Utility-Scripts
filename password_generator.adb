with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Password_Generator is
   Gen : Generator;
   Pass_Length : constant Positive := 8;

   function Get_Random_Character return Character is
      All_Chars : constant String := "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+";
      Index : constant Natural := Natural (Random (Gen) * Float (All_Chars'Length) + 1.0);
   begin
      return All_Chars (Index);
   end Get_Random_Character;

   Password : String (1 .. Pass_Length);
begin
   Reset (Gen);  -- Initialize the generator

   -- Generate a random password
   for I in Password'Range loop
      Password (I) := Get_Random_Character;
   end loop;

   Put_Line ("Generated Password: " & Password);
end Password_Generator;
