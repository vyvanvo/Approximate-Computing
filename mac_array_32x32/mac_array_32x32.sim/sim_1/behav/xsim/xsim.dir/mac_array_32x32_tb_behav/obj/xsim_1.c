/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_8259(char*, char *);
extern void execute_8260(char*, char *);
extern void execute_13907(char*, char *);
extern void execute_13908(char*, char *);
extern void execute_13909(char*, char *);
extern void execute_13910(char*, char *);
extern void execute_13911(char*, char *);
extern void execute_13912(char*, char *);
extern void execute_13913(char*, char *);
extern void execute_13914(char*, char *);
extern void execute_13915(char*, char *);
extern void execute_13916(char*, char *);
extern void execute_13917(char*, char *);
extern void execute_13918(char*, char *);
extern void execute_13919(char*, char *);
extern void execute_13920(char*, char *);
extern void execute_13921(char*, char *);
extern void execute_13922(char*, char *);
extern void execute_13923(char*, char *);
extern void execute_13924(char*, char *);
extern void execute_13925(char*, char *);
extern void execute_13926(char*, char *);
extern void execute_13927(char*, char *);
extern void execute_13928(char*, char *);
extern void execute_13929(char*, char *);
extern void execute_13930(char*, char *);
extern void execute_13931(char*, char *);
extern void execute_13932(char*, char *);
extern void execute_13933(char*, char *);
extern void execute_13934(char*, char *);
extern void execute_13935(char*, char *);
extern void execute_13936(char*, char *);
extern void execute_13937(char*, char *);
extern void execute_13938(char*, char *);
extern void execute_13939(char*, char *);
extern void execute_13940(char*, char *);
extern void execute_13941(char*, char *);
extern void execute_13942(char*, char *);
extern void execute_13943(char*, char *);
extern void execute_13944(char*, char *);
extern void execute_13945(char*, char *);
extern void execute_13946(char*, char *);
extern void execute_13947(char*, char *);
extern void execute_13948(char*, char *);
extern void execute_13949(char*, char *);
extern void execute_13950(char*, char *);
extern void execute_13951(char*, char *);
extern void execute_13952(char*, char *);
extern void execute_13953(char*, char *);
extern void execute_13954(char*, char *);
extern void execute_13955(char*, char *);
extern void execute_13956(char*, char *);
extern void execute_13957(char*, char *);
extern void execute_13958(char*, char *);
extern void execute_13959(char*, char *);
extern void execute_13960(char*, char *);
extern void execute_13961(char*, char *);
extern void execute_13962(char*, char *);
extern void execute_13963(char*, char *);
extern void execute_13964(char*, char *);
extern void execute_13965(char*, char *);
extern void execute_13966(char*, char *);
extern void execute_13967(char*, char *);
extern void execute_13968(char*, char *);
extern void execute_13969(char*, char *);
extern void execute_13970(char*, char *);
extern void execute_13971(char*, char *);
extern void execute_13972(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_8276(char*, char *);
extern void execute_8277(char*, char *);
extern void execute_8278(char*, char *);
extern void execute_8279(char*, char *);
extern void execute_6(char*, char *);
extern void execute_8275(char*, char *);
extern void execute_11(char*, char *);
extern void execute_8272(char*, char *);
extern void execute_8273(char*, char *);
extern void execute_8274(char*, char *);
extern void execute_13973(char*, char *);
extern void execute_13974(char*, char *);
extern void execute_13975(char*, char *);
extern void execute_13976(char*, char *);
extern void execute_13977(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[85] = {(funcp)execute_8259, (funcp)execute_8260, (funcp)execute_13907, (funcp)execute_13908, (funcp)execute_13909, (funcp)execute_13910, (funcp)execute_13911, (funcp)execute_13912, (funcp)execute_13913, (funcp)execute_13914, (funcp)execute_13915, (funcp)execute_13916, (funcp)execute_13917, (funcp)execute_13918, (funcp)execute_13919, (funcp)execute_13920, (funcp)execute_13921, (funcp)execute_13922, (funcp)execute_13923, (funcp)execute_13924, (funcp)execute_13925, (funcp)execute_13926, (funcp)execute_13927, (funcp)execute_13928, (funcp)execute_13929, (funcp)execute_13930, (funcp)execute_13931, (funcp)execute_13932, (funcp)execute_13933, (funcp)execute_13934, (funcp)execute_13935, (funcp)execute_13936, (funcp)execute_13937, (funcp)execute_13938, (funcp)execute_13939, (funcp)execute_13940, (funcp)execute_13941, (funcp)execute_13942, (funcp)execute_13943, (funcp)execute_13944, (funcp)execute_13945, (funcp)execute_13946, (funcp)execute_13947, (funcp)execute_13948, (funcp)execute_13949, (funcp)execute_13950, (funcp)execute_13951, (funcp)execute_13952, (funcp)execute_13953, (funcp)execute_13954, (funcp)execute_13955, (funcp)execute_13956, (funcp)execute_13957, (funcp)execute_13958, (funcp)execute_13959, (funcp)execute_13960, (funcp)execute_13961, (funcp)execute_13962, (funcp)execute_13963, (funcp)execute_13964, (funcp)execute_13965, (funcp)execute_13966, (funcp)execute_13967, (funcp)execute_13968, (funcp)execute_13969, (funcp)execute_13970, (funcp)execute_13971, (funcp)execute_13972, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_8276, (funcp)execute_8277, (funcp)execute_8278, (funcp)execute_8279, (funcp)execute_6, (funcp)execute_8275, (funcp)execute_11, (funcp)execute_8272, (funcp)execute_8273, (funcp)execute_8274, (funcp)execute_13973, (funcp)execute_13974, (funcp)execute_13975, (funcp)execute_13976, (funcp)execute_13977, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 85;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mac_array_32x32_tb_behav/xsim.reloc",  (void **)funcTab, 85);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mac_array_32x32_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mac_array_32x32_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/mac_array_32x32_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mac_array_32x32_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mac_array_32x32_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
