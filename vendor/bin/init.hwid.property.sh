#! /vendor/bin/sh

cei_project_id=`cat /proc/cei_project_id`
cei_phase_id=`cat /proc/cei_phase_id`
cei_qfuse=`cat /proc/cei_qfuse_status`

if [ -n $cei_project_id ]; then
    setprop ro.vendor.cei_project_id $cei_project_id
else
    setprop ro.vendor.cei_project_id PROJ_ID_INVALID
fi

if [ -n $cei_phase_id ]; then
    setprop ro.vendor.cei_phase_id $cei_phase_id
else
    setprop ro.vendor.cei_project_id HW_ID_INVALID
fi

if [ -n $cei_qfuse ]; then
    setprop ro.vendor.cei_qfuse $cei_qfuse
else
    setprop ro.vendor.cei_qfuse Unknown
fi
