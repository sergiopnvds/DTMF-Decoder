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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Sergio Penavades/VHDL/dsedfinal/filtro1633.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2807594338_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3064532541_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3410769178_1035706684(char *, char *, char *, char *, int );


static void work_a_3377269069_3212880686_p_0(char *t0)
{
    char t11[16];
    char t12[16];
    char t13[16];
    char t14[16];
    char t29[16];
    char t30[16];
    char t31[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4192);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6684U);
    t5 = (t0 + 2288U);
    t8 = *((char **)t5);
    t5 = (t0 + 6748U);
    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 6716U);
    t17 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t29, t8, t5, t16, t15);
    t18 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t14, t17, t29, 16);
    t19 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t13, t18, t14, 32);
    t20 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t12, t4, t2, t19, t13);
    t21 = (t0 + 1832U);
    t22 = *((char **)t21);
    t21 = (t0 + 6732U);
    t23 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t11, t20, t12, t22, t21);
    t24 = (t0 + 2408U);
    t25 = *((char **)t24);
    t24 = (t25 + 0);
    t26 = (t11 + 12U);
    t27 = *((unsigned int *)t26);
    t28 = (1U * t27);
    memcpy(t24, t23, t28);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 4272);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t0 + 4336);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast(t2);

LAB9:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t0 + 4400);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1672U);
    t15 = *((char **)t4);
    t4 = (t0 + 6716U);
    t16 = (t0 + 2768U);
    t17 = *((char **)t16);
    t16 = (t0 + 6828U);
    t18 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t14, t15, t4, t17, t16);
    t19 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t13, t18, t14, 16);
    t20 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t12, t19, t13, 32);
    t21 = (t0 + 2408U);
    t22 = *((char **)t21);
    t21 = (t0 + 6780U);
    t23 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t11, t20, t12, t22, t21);
    t24 = (t0 + 2528U);
    t25 = *((char **)t24);
    t24 = (t25 + 0);
    t26 = (t11 + 12U);
    t27 = *((unsigned int *)t26);
    t28 = (1U * t27);
    memcpy(t24, t23, t28);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6732U);
    t5 = (t0 + 2888U);
    t8 = *((char **)t5);
    t5 = (t0 + 6844U);
    t15 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t13, t4, t2, t8, t5);
    t16 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t12, t15, t13, 16);
    t17 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t11, t16, t12, 32);
    t18 = (t0 + 2648U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    t20 = (t11 + 12U);
    t27 = *((unsigned int *)t20);
    t27 = (t27 * 1U);
    memcpy(t18, t17, t27);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    t2 = (t0 + 6812U);
    t5 = (t0 + 2648U);
    t8 = *((char **)t5);
    t5 = (t0 + 6812U);
    t15 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t14, t4, t2, t8, t5);
    t16 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t13, t15, t14, 16);
    t17 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t12, t16, t13, 32);
    t18 = (t0 + 2528U);
    t19 = *((char **)t18);
    t18 = (t0 + 6796U);
    t20 = (t0 + 2528U);
    t21 = *((char **)t20);
    t20 = (t0 + 6796U);
    t22 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t31, t19, t18, t21, t20);
    t23 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t30, t22, t31, 16);
    t24 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t29, t23, t30, 32);
    t25 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t11, t17, t12, t24, t29);
    t26 = (t0 + 2408U);
    t32 = *((char **)t26);
    t26 = (t32 + 0);
    t33 = (t11 + 12U);
    t27 = *((unsigned int *)t33);
    t28 = (1U * t27);
    memcpy(t26, t25, t28);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 7190);
    t5 = (t0 + 4272);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 7222);
    t5 = (t0 + 4336);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

}


extern void work_a_3377269069_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3377269069_3212880686_p_0};
	xsi_register_didat("work_a_3377269069_3212880686", "isim/tb_dtmf_top_isim_beh.exe.sim/work/a_3377269069_3212880686.didat");
	xsi_register_executes(pe);
}
