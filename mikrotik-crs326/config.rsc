================================================================================
# MikroTik CRS326
# Альтернативная защита от ARP-spoofing (reply-only + horizon)
# Эксперимент: защита канального уровня без аппаратного DAI
# Авторы: Горский Я.В., Ткачёв Г.А.
# Дата: 2026
================================================================================

# 2026-03-08 09:42:00 by RouterOS 7.22
# software id = T22Z-74P7
#
# model = CRS326-24G-2S+
# serial number = 94550BDFA16F
#
/interface bridge
add admin-mac=C4:AD:34:03:6F:2A auto-mac=no comment=defconf name=bridge
add arp=reply-only dhcp-snooping=yes name=bridge-local
#
/interface bridge port
add bridge=bridge comment=defconf interface=ether1
add bridge=bridge comment=defconf horizon=1 interface=ether2
add bridge=bridge comment=defconf horizon=1 interface=ether3
add bridge=bridge comment=defconf interface=ether4
add bridge=bridge comment=defconf interface=ether5
add bridge=bridge comment=defconf interface=ether6
add bridge=bridge comment=defconf interface=ether7
add bridge=bridge comment=defconf interface=ether8
add bridge=bridge comment=defconf interface=ether9
add bridge=bridge comment=defconf interface=ether10
add bridge=bridge comment=defconf interface=ether11
add bridge=bridge comment=defconf interface=ether12
add bridge=bridge comment=defconf interface=ether13
add bridge=bridge comment=defconf interface=ether14
add bridge=bridge comment=defconf interface=ether15
add bridge=bridge comment=defconf interface=ether16
add bridge=bridge comment=defconf interface=ether17
add bridge=bridge comment=defconf interface=ether18
add bridge=bridge comment=defconf interface=ether19
add bridge=bridge comment=defconf interface=ether20
add bridge=bridge comment=defconf interface=ether21
add bridge=bridge comment=defconf interface=ether22
add bridge=bridge comment=defconf interface=ether23
add bridge=bridge comment=defconf interface=ether24
add bridge=bridge comment=defconf interface=sfp-sfpplus1
#
/ip address
add address=10.19.103.27/24 interface=bridge-local network=10.19.103.0
