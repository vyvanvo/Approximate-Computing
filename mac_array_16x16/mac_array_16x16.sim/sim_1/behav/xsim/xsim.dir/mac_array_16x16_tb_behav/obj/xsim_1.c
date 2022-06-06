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
extern void execute_2067(char*, char *);
extern void execute_2068(char*, char *);
extern void execute_3491(char*, char *);
extern void execute_3492(char*, char *);
extern void execute_3493(char*, char *);
extern void execute_3494(char*, char *);
extern void execute_3495(char*, char *);
extern void execute_3496(char*, char *);
extern void execute_3497(char*, char *);
extern void execute_3498(char*, char *);
extern void execute_3499(char*, char *);
extern void execute_3500(char*, char *);
extern void execute_3501(char*, char *);
extern void execute_3502(char*, char *);
extern void execute_3503(char*, char *);
extern void execute_3504(char*, char *);
extern void execute_3505(char*, char *);
extern void execute_3506(char*, char *);
extern void execute_3507(char*, char *);
extern void execute_3508(char*, char *);
extern void execute_3509(char*, char *);
extern void execute_3510(char*, char *);
extern void execute_3511(char*, char *);
extern void execute_3512(char*, char *);
extern void execute_3513(char*, char *);
extern void execute_3514(char*, char *);
extern void execute_3515(char*, char *);
extern void execute_3516(char*, char *);
extern void execute_3517(char*, char *);
extern void execute_3518(char*, char *);
extern void execute_3519(char*, char *);
extern void execute_3520(char*, char *);
extern void execute_3521(char*, char *);
extern void execute_3522(char*, char *);
extern void execute_3523(char*, char *);
extern void execute_3524(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2084(char*, char *);
extern void execute_2085(char*, char *);
extern void execute_2086(char*, char *);
extern void execute_2087(char*, char *);
extern void execute_6(char*, char *);
extern void execute_2083(char*, char *);
extern void execute_11(char*, char *);
extern void execute_2080(char*, char *);
extern void execute_2081(char*, char *);
extern void execute_2082(char*, char *);
extern void execute_3525(char*, char *);
extern void execute_3526(char*, char *);
extern void execute_3527(char*, char *);
extern void execute_3528(char*, char *);
extern void execute_3529(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[53] = {(funcp)execute_2067, (funcp)execute_2068, (funcp)execute_3491, (funcp)execute_3492, (funcp)execute_3493, (funcp)execute_3494, (funcp)execute_3495, (funcp)execute_3496, (funcp)execute_3497, (funcp)execute_3498, (funcp)execute_3499, (funcp)execute_3500, (funcp)execute_3501, (funcp)execute_3502, (funcp)execute_3503, (funcp)execute_3504, (funcp)execute_3505, (funcp)execute_3506, (funcp)execute_3507, (funcp)execute_3508, (funcp)execute_3509, (funcp)execute_3510, (funcp)execute_3511, (funcp)execute_3512, (funcp)execute_3513, (funcp)execute_3514, (funcp)execute_3515, (funcp)execute_3516, (funcp)execute_3517, (funcp)execute_3518, (funcp)execute_3519, (funcp)execute_3520, (funcp)execute_3521, (funcp)execute_3522, (funcp)execute_3523, (funcp)execute_3524, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2084, (funcp)execute_2085, (funcp)execute_2086, (funcp)execute_2087, (funcp)execute_6, (funcp)execute_2083, (funcp)execute_11, (funcp)execute_2080, (funcp)execute_2081, (funcp)execute_2082, (funcp)execute_3525, (funcp)execute_3526, (funcp)execute_3527, (funcp)execute_3528, (funcp)execute_3529, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 53;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mac_array_16x16_tb_behav/xsim.reloc",  (void **)funcTab, 53);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mac_array_16x16_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mac_array_16x16_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/mac_array_16x16_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mac_array_16x16_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mac_array_16x16_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
