pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b~start.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~start.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__secondary_stack_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "ada__io_exceptions_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "ada__numerics_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "ada__strings_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "interfaces__c_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "system__os_lib_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "ada__tags_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "ada__streams_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "system__file_control_block_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "system__finalization_root_E");
   E083 : Short_Integer; pragma Import (Ada, E083, "ada__finalization_E");
   E082 : Short_Integer; pragma Import (Ada, E082, "system__file_io_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "system__storage_pools_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__finalization_masters_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__storage_pools__subpools_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "ada__calendar_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "ada__text_io_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "system__assertions_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__strings__maps_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "ada__strings__unbounded_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "system__pool_global_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "system__random_seed_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "alea_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "console_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "p_list_gen_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "utils_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "person_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "tree_bin_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "tree_gen_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "list_tree_gen_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "utils_gen_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "main_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E189 := E189 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "system__pool_global__finalize_spec");
      begin
         F1;
      end;
      E142 := E142 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__strings__unbounded__finalize_spec");
      begin
         F2;
      end;
      E074 := E074 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E148 := E148 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__storage_pools__subpools__finalize_spec");
      begin
         F4;
      end;
      E150 := E150 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__finalization_masters__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E082 := E082 - 1;
         F6;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Secondary_Stack'Elab_Body;
      E017 := E017 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E077 := E077 + 1;
      Ada.Numerics'Elab_Spec;
      E179 := E179 + 1;
      Ada.Strings'Elab_Spec;
      E132 := E132 + 1;
      Interfaces.C'Elab_Spec;
      E087 := E087 + 1;
      System.Os_Lib'Elab_Body;
      E089 := E089 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E051 := E051 + 1;
      Ada.Streams'Elab_Spec;
      E076 := E076 + 1;
      System.File_Control_Block'Elab_Spec;
      E092 := E092 + 1;
      System.Finalization_Root'Elab_Spec;
      E085 := E085 + 1;
      Ada.Finalization'Elab_Spec;
      E083 := E083 + 1;
      System.File_Io'Elab_Body;
      E082 := E082 + 1;
      System.Storage_Pools'Elab_Spec;
      E156 := E156 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E150 := E150 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E148 := E148 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E185 := E185 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E074 := E074 + 1;
      System.Assertions'Elab_Spec;
      E170 := E170 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E136 := E136 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E142 := E142 + 1;
      System.Pool_Global'Elab_Spec;
      E189 := E189 + 1;
      System.Random_Seed'Elab_Body;
      E183 := E183 + 1;
      E178 := E178 + 1;
      console'elab_spec;
      E164 := E164 + 1;
      E168 := E168 + 1;
      E176 := E176 + 1;
      Person'Elab_Spec;
      E174 := E174 + 1;
      E193 := E193 + 1;
      Tree_Gen'Elab_Spec;
      E172 := E172 + 1;
      List_Tree_Gen'Elab_Spec;
      E166 := E166 + 1;
      E195 := E195 + 1;
      E005 := E005 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   ./alea.o
   --   ./console.o
   --   ./p_list_gen.o
   --   ./utils.o
   --   ./person.o
   --   ./tree_bin.o
   --   ./tree_gen.o
   --   ./list_tree_gen.o
   --   ./utils_gen.o
   --   ./main.o
   --   ./start.o
   --   -L./
   --   -L./
   --   -L/usr/lib/gcc/x86_64-linux-gnu/7/adalib/
   --   -shared
   --   -lgnat-7
--  END Object file/option list   

end ada_main;
