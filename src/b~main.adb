pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b~main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~main.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__secondary_stack_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__io_exceptions_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ada__numerics_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "ada__strings_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "interfaces__c_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__os_lib_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__tags_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__streams_E");
   E084 : Short_Integer; pragma Import (Ada, E084, "system__file_control_block_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "system__finalization_root_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "ada__finalization_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "system__file_io_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__storage_pools_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__finalization_masters_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__storage_pools__subpools_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "ada__calendar_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "ada__text_io_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "system__assertions_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__strings__maps_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "ada__strings__unbounded_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "system__pool_global_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "system__random_seed_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "alea_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "console_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "p_list_gen_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "utils_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "person_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "tree_bin_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E183 := E183 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "system__pool_global__finalize_spec");
      begin
         F1;
      end;
      E134 := E134 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__strings__unbounded__finalize_spec");
      begin
         F2;
      end;
      E053 := E053 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E140 := E140 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__storage_pools__subpools__finalize_spec");
      begin
         F4;
      end;
      E142 := E142 - 1;
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
         E074 := E074 - 1;
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
      E056 := E056 + 1;
      Ada.Numerics'Elab_Spec;
      E169 := E169 + 1;
      Ada.Strings'Elab_Spec;
      E124 := E124 + 1;
      Interfaces.C'Elab_Spec;
      E079 := E079 + 1;
      System.Os_Lib'Elab_Body;
      E081 := E081 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E058 := E058 + 1;
      Ada.Streams'Elab_Spec;
      E055 := E055 + 1;
      System.File_Control_Block'Elab_Spec;
      E084 := E084 + 1;
      System.Finalization_Root'Elab_Spec;
      E077 := E077 + 1;
      Ada.Finalization'Elab_Spec;
      E075 := E075 + 1;
      System.File_Io'Elab_Body;
      E074 := E074 + 1;
      System.Storage_Pools'Elab_Spec;
      E148 := E148 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E142 := E142 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E140 := E140 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E175 := E175 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E053 := E053 + 1;
      System.Assertions'Elab_Spec;
      E179 := E179 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E128 := E128 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E134 := E134 + 1;
      System.Pool_Global'Elab_Spec;
      E183 := E183 + 1;
      System.Random_Seed'Elab_Body;
      E173 := E173 + 1;
      E168 := E168 + 1;
      console'elab_spec;
      E156 := E156 + 1;
      E158 := E158 + 1;
      E166 := E166 + 1;
      Person'Elab_Spec;
      E160 := E160 + 1;
      E187 := E187 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

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
   --   ./main.o
   --   -L./
   --   -L./
   --   -L/usr/lib/gcc/x86_64-linux-gnu/7/adalib/
   --   -shared
   --   -lgnat-7
--  END Object file/option list   

end ada_main;
