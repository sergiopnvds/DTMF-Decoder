/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    std_textio_init();
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3564397177_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1059517472_3212880686_init();
    work_a_0942104819_3212880686_init();
    work_a_2197938761_3212880686_init();
    work_a_0989523508_3212880686_init();
    work_a_0758867471_3212880686_init();
    work_a_0126700370_3212880686_init();
    work_a_4069384256_3212880686_init();
    work_a_3307618810_3212880686_init();
    work_a_3377269069_3212880686_init();
    work_a_2883659063_3212880686_init();
    work_a_0822590248_3212880686_init();
    work_a_2056678617_3212880686_init();
    work_a_0808057935_3212880686_init();
    work_a_2303451619_2372691052_init();


    xsi_register_tops("work_a_2303451619_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
