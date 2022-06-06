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
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_225(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_141(char*, char *);
extern void execute_5(char*, char *);
extern void execute_137(char*, char *);
extern void execute_10(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[29] = {(funcp)execute_131, (funcp)execute_132, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_138, (funcp)execute_139, (funcp)execute_140, (funcp)execute_141, (funcp)execute_5, (funcp)execute_137, (funcp)execute_10, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_235, (funcp)execute_236, (funcp)execute_237, (funcp)execute_238, (funcp)execute_239, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 29;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mac_array_4x4_tb_behav/xsim.reloc",  (void **)funcTab, 29);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mac_array_4x4_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mac_array_4x4_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
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
    iki_set_sv_type_file_path_name("xsim.dir/mac_array_4x4_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mac_array_4x4_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mac_array_4x4_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
