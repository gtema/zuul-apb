# FROM ansibleplaybookbundle/apb-base:canary
FROM agoncharov/apb-base:stable

LABEL "com.redhat.apb.spec"=\
"IyBMaWNlbnNlZCB1bmRlciB0aGUgQXBhY2hlIExpY2Vuc2UsIFZlcnNpb24gMi4wICh0aGUgIkxp\
Y2Vuc2UiKTsgeW91IG1heQojIG5vdCB1c2UgdGhpcyBmaWxlIGV4Y2VwdCBpbiBjb21wbGlhbmNl\
IHdpdGggdGhlIExpY2Vuc2UuIFlvdSBtYXkgb2J0YWluCiMgYSBjb3B5IG9mIHRoZSBMaWNlbnNl\
IGF0CiMKIyAgICAgIGh0dHA6Ly93d3cuYXBhY2hlLm9yZy9saWNlbnNlcy9MSUNFTlNFLTIuMAoj\
CiMgVW5sZXNzIHJlcXVpcmVkIGJ5IGFwcGxpY2FibGUgbGF3IG9yIGFncmVlZCB0byBpbiB3cml0\
aW5nLCBzb2Z0d2FyZQojIGRpc3RyaWJ1dGVkIHVuZGVyIHRoZSBMaWNlbnNlIGlzIGRpc3RyaWJ1\
dGVkIG9uIGFuICJBUyBJUyIgQkFTSVMsIFdJVEhPVVQKIyBXQVJSQU5USUVTIE9SIENPTkRJVElP\
TlMgT0YgQU5ZIEtJTkQsIGVpdGhlciBleHByZXNzIG9yIGltcGxpZWQuIFNlZSB0aGUKIyBMaWNl\
bnNlIGZvciB0aGUgc3BlY2lmaWMgbGFuZ3VhZ2UgZ292ZXJuaW5nIHBlcm1pc3Npb25zIGFuZCBs\
aW1pdGF0aW9ucwojIHVuZGVyIHRoZSBMaWNlbnNlLgotLS0KdmVyc2lvbjogMS4wCm5hbWU6IHp1\
dWwtYXBiCmRlc2NyaXB0aW9uOiBadXVsLUNJCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9u\
YWwKdGFnczoKICAtIENJL0NECm1ldGFkYXRhOgogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8v\
enV1bC1jaS5vcmcKICBkaXNwbGF5TmFtZTogWnV1bCAoQVBCKQogIGxvbmdEZXNjcmlwdGlvbjog\
VGhpcyBkZXBsb3lzIFp1dWwtY2kKICBkZXBlbmRlbmNpZXM6IFtdCiAgcHJvdmlkZXJEaXNwbGF5\
TmFtZTogT3BlblRlbGVrb21DbG91ZApwbGFuczoKICAtIG5hbWU6IHByb2QKICAgIGRlc2NyaXB0\
aW9uOiBUaGlzIGRlZmF1bHQgcGxhbiBkZXBsb3lzIHp1dWwtYXBiCiAgICBmcmVlOiBUcnVlCiAg\
ICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6IFByb2R1Y3Rpb24KICAgIHBhcmFtZXRlcnM6\
CiAgICAgIC0gbmFtZTogdXNlX3MyaQogICAgICAgIHRpdGxlOiBVc2UgUzJJIHRvIGJ1aWxkIGlt\
YWdlcyBwYXJ0IG9mIHRoZSBwcm9qZWN0CiAgICAgICAgdHlwZTogYm9vbGVhbgogICAgICAgIGRl\
ZmF1bHQ6IHRydWUKICAgICAgLSBuYW1lOiBwcm9qZWN0X2NvbmZpZ19yZXBvCiAgICAgICAgdGl0\
bGU6IGdpdCByZXBvc2l0b3J5IHdpdGggcHJvamVjdC1jb25maWd1cmF0aW9uCiAgICAgICAgdHlw\
ZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogJ2h0dHBzOi8vZ2l0aHViLmNvbS9ndGVtYS96dXVs\
LXByb2plY3QtY29uZmlnJwogICAgICAtIG5hbWU6IHMyaV9yZXBvCiAgICAgICAgdGl0bGU6IGdp\
dCByZXBvc2l0b3J5IHRvIGJlIHVzZWQgZm9yIFMySQogICAgICAgIHR5cGU6IHN0cmluZwogICAg\
ICAgIGRlZmF1bHQ6ICdodHRwczovL2dpdGh1Yi5jb20vZ3RlbWEvczJpLXp1dWwnCiAgICAgIC0g\
bmFtZTogb3NfY2xpZW50X2NvbmZpZ19jbG91ZHMKICAgICAgICB0aXRsZTogb3NfY2xpZW50X2Nv\
bmZpZwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3BsYXlfdHlwZTogdGV4dGFyZWEK\
ICAgICAgICBkZWZhdWx0OiB8KwogICAgICAgICAgY2FjaGU6CiAgICAgICAgICAgIGV4cGlyYXRp\
b25fdGltZTogMzYwMAogICAgICAgICAgY2xvdWRzOgogICAgICAgICAgICBteV9jbG91ZDoKICAg\
ICAgICAgICAgICBhdXRoOgogICAgICAgICAgICAgICAgYXV0aF91cmw6IE1ZX1VSTF9IRVJFCiAg\
ICAgICAgICAgICAgICB1c2VyX2RvbWFpbl9uYW1lOiBNWV9ET01BSU4KICAgICAgICAgICAgICBp\
bnRlcmZhY2U6IHB1YmxpYwogICAgICAgICAgICAgIGlkZW50aXR5X2FwaV92ZXJzaW9uOiAzCiAg\
ICAgIC0gbmFtZTogb2NfY2xpZW50X2NvbmZpZ19zZWN1cmUKICAgICAgICB0aXRsZTogb3NfY2xp\
ZW50X2NvbmZpZ19zZWN1cmUKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X3R5\
cGU6IHRleHRhcmVhCiAgICAgICAgZGlzcGxheV9ncm91cDogc2VjcmV0cwogICAgICAgIGRlZmF1\
bHQ6IHwrCiAgICAgICAgICBjbG91ZHM6CiAgICAgICAgICAgIG15X2Nsb3VkOgogICAgICAgICAg\
ICAgIGF1dGg6CiAgICAgICAgICAgICAgICB1c2VybmFtZTogTVlfVVNFUgogICAgICAgICAgICAg\
ICAgcGFzc3dvcmQ6IE1ZX1NFQ1JFVAogICAgICAtIG5hbWU6IGdpdGh1Yl9zZWNyZXQKICAgICAg\
ICB0aXRsZTogc2VjcmV0IHRvIGJlIHVzZWQgYnkgZ2l0IHdlYmhvb2tzIChzMmkpCiAgICAgICAg\
dHlwZTogc3RyaW5nCiAgICAgICAgZGlzcGxheV9ncm91cDogc2VjcmV0cwogICAgICAgIGRlZmF1\
bHQ6IG15c2VjcmV0CiAgICAgIC0gbmFtZTogd2ViaG9va19naXRodWJfdG9rZW4KICAgICAgICB0\
aXRsZTogd2ViaG9vayB0b2tlbiwgd2hpY2ggaXMgdXNlZCBieSBnaXRodWIgWnV1bCBBcHAKICAg\
ICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X2dyb3VwOiBzZWNyZXRzCiAgICAgICAg\
ZGVmYXVsdDogJycKICAgICAgLSBuYW1lOiB3ZWJob29rX2dpdGh1Yl9hcHBfaWQKICAgICAgICB0\
aXRsZTogR2l0SHViIFp1dWwgYXBwbGljYXRpb24gSUQKICAgICAgICBkaXNwbGF5X2dyb3VwOiBz\
ZWNyZXRzCiAgICAgICAgdHlwZTogaW50CiAgICAgICAgZGVmYXVsdDogMAogICAgICAtIG5hbWU6\
IGdlYXJtYW5fcm9vdF9jYQogICAgICAgIHRpdGxlOiBHZWFybWFuIHJvb3QgY2EKICAgICAgICB0\
eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X3R5cGU6IHRleHRhcmVhCiAgICAgICAgZGlzcGxh\
eV9ncm91cDogc2VjcmV0cwogICAgICAgIGRlZmF1bHQ6IHwrCiAgICAgICAgICAtLS0tLUJFR0lO\
IENFUlRJRklDQVRFLS0tLS0KICAgICAgICAgIENPTlRFTlQKICAgICAgICAgIC0tLS0tRU5EIENF\
UlRJRklDQVRFLS0tLS0KICAgICAgLSBuYW1lOiBnZWFybWFuX3NlcnZlcl9wZW0KICAgICAgICB0\
aXRsZTogR2Vhcm1hbiBTZXJ2ZXIgUEVNCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGlz\
cGxheV90eXBlOiB0ZXh0YXJlYQogICAgICAgIGRpc3BsYXlfZ3JvdXA6IHNlY3JldHMKICAgICAg\
ICBkZWZhdWx0OiB8KwogICAgICAgICAgLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCiAgICAg\
ICAgICBDT05URU5UCiAgICAgICAgICAtLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCiAgICAgIC0g\
bmFtZTogZ2Vhcm1hbl9zZXJ2ZXJfa2V5CiAgICAgICAgdGl0bGU6IEdlYXJtYW4gU2VydmVyIEtF\
WQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3BsYXlfdHlwZTogdGV4dGFyZWEKICAg\
ICAgICBkaXNwbGF5X2dyb3VwOiBzZWNyZXRzCiAgICAgICAgZGVmYXVsdDogfCsKICAgICAgICAg\
IC0tLS0tQkVHSU4gUFJJVkFURSBLRVktLS0tLQogICAgICAgICAgQ09OVEVOVAogICAgICAgICAg\
LS0tLS1FTkQgUFJJVkFURSBLRVktLS0tLQogICAgICAtIG5hbWU6IGdlYXJtYW5fY2xpZW50X3Bl\
bQogICAgICAgIHRpdGxlOiBHZWFybWFuIGNsaWVudCBQRU0KICAgICAgICB0eXBlOiBzdHJpbmcK\
ICAgICAgICBkaXNwbGF5X3R5cGU6IHRleHRhcmVhCiAgICAgICAgZGlzcGxheV9ncm91cDogc2Vj\
cmV0cwogICAgICAgIGRlZmF1bHQ6IHwrCiAgICAgICAgICAtLS0tLUJFR0lOIENFUlRJRklDQVRF\
LS0tLS0KICAgICAgICAgIENPTlRFTlQKICAgICAgICAgIC0tLS0tRU5EIENFUlRJRklDQVRFLS0t\
LS0KICAgICAgLSBuYW1lOiBnZWFybWFuX2NsaWVudF9rZXkKICAgICAgICB0aXRsZTogR2Vhcm1h\
biBjbGllbnQgS0VZCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGlzcGxheV90eXBlOiB0\
ZXh0YXJlYQogICAgICAgIGRpc3BsYXlfZ3JvdXA6IHNlY3JldHMKICAgICAgICBkZWZhdWx0OiB8\
KwogICAgICAgICAgLS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCiAgICAgICAgICBDT05URU5U\
CiAgICAgICAgICAtLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tCiAgICAgIC0gbmFtZTogenV1bF9n\
aXRodWJfcGVtCiAgICAgICAgdGl0bGU6IEdpdGh1YiBadXVsIGFwcCBjZXJ0aWZpY2F0ZQogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3BsYXlfdHlwZTogdGV4dGFyZWEKICAgICAgICBk\
aXNwbGF5X2dyb3VwOiBzZWNyZXRzCiAgICAgICAgZGVmYXVsdDogfCsKICAgICAgICAgIC0tLS0t\
QkVHSU4gUlNBIFBSSVZBVEUgS0VZLS0tLS0KICAgICAgICAgIENPTlRFTlQKICAgICAgICAgIC0t\
LS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCiAgICAgIC0gbmFtZTogd29ya2VyX3NzaF9wZW0K\
ICAgICAgICB0aXRsZTogU1NIIEtleSB0byBsb2dpbiB0byB3b3JrZXIgbm9kZXMKICAgICAgICB0\
eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X3R5cGU6IHRleHRhcmVhCiAgICAgICAgZGlzcGxh\
eV9ncm91cDogc2VjcmV0cwogICAgICAgIGRlZmF1bHQ6IHwrCiAgICAgICAgICAtLS0tLUJFR0lO\
IFJTQSBQUklWQVRFIEtFWS0tLS0tCiAgICAgICAgICBDT05URU5UCiAgICAgICAgICAtLS0tLUVO\
RCBSU0EgUFJJVkFURSBLRVktLS0tLQogICAgICAtIG5hbWU6IHpvb2tlZXBlcl9yZXBsaWNhcwog\
ICAgICAgIHRpdGxlOiBDb3VudCBvZiB6b29rZWVwZXIgaW5zdGFuY2VzIChzaG91bGQgYmUgdW5l\
dmVuKQogICAgICAgIGVudW06IFsxLCAzLCA1XQogICAgICAgIHR5cGU6IGVudW0KICAgICAgICBk\
ZWZhdWx0OiAxCiAgICAgICAgZGlzcGxheV9ncm91cDogWm9va2VlcGVyIENvbmZpZ3VyYXRpb24K\
ICAgICAgLSBuYW1lOiB6b29rZWVwZXJfbG9jYWxfc3RvcmFnZQogICAgICAgIHRpdGxlOiBTaXpl\
IG9mIHRoZSBQViBmb3Igem9va2VlcGVyIGluc3RhbmNlcyAoZWcuIDFHaSkKICAgICAgICB0eXBl\
OiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiAiNUdpIgogICAgICAgIGRpc3BsYXlfZ3JvdXA6IFpv\
b2tlZXBlciBDb25maWd1cmF0aW9uCiAgICAgIC0gbmFtZTogem9va2VlcGVyX2ltYWdlX25hbWUK\
ICAgICAgICB0aXRsZTogTmFtZSBvZiB0aGUgem9va2VlcGVyIGltYWdlIChpZiBzMmkgaXMgbm90\
IHVzZWQpLgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJzMmktem9va2Vl\
cGVyOmxhdGVzdCIKICAgICAgICBkaXNwbGF5X2dyb3VwOiBab29rZWVwZXIgQ29uZmlndXJhdGlv\
bgogICAgICAtIG5hbWU6IHp1dWxfc2NoZWR1bGVyX2ltYWdlX25hbWUKICAgICAgICB0aXRsZTog\
TmFtZSBvZiB0aGUgenV1bCBzY2hlZHVsZXIgaW1hZ2UgKGlmIHMyaSBpcyBub3QgdXNlZCkuCiAg\
ICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogInMyaS1hcHAtenV1bC1zY2hlZHVs\
ZXI6bGF0ZXN0IgogICAgICAgIGRpc3BsYXlfZ3JvdXA6IFp1dWwgQ29uZmlndXJhdGlvbgogICAg\
ICAtIG5hbWU6IHp1dWxfZXhlY3V0b3JfcmVwbGljYXMKICAgICAgICB0aXRsZTogQ291bnQgb2Yg\
em9va2VlcGVyIGluc3RhbmNlcyAoc2hvdWxkIGJlIHVuZXZlbikKICAgICAgICB0eXBlOiBpbnQK\
ICAgICAgICBkZWZhdWx0OiAxCiAgICAgICAgZGlzcGxheV9ncm91cDogWnV1bCBDb25maWd1cmF0\
aW9uCiAgICAgIC0gbmFtZTogenV1bF9leGVjdXRvcl9sb2NhbF9zdG9yYWdlCiAgICAgICAgdGl0\
bGU6IFNpemUgb2YgdGhlIFBWIGZvciB6dXVsIGV4ZWN1dG9yIGluc3RhbmNlcyAoZWcuIDFHaSkK\
ICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiAiMTBHaSIKICAgICAgICBkaXNw\
bGF5X2dyb3VwOiBadXVsIENvbmZpZ3VyYXRpb24KICAgICAgLSBuYW1lOiB6dXVsX2V4ZWN1dG9y\
X2ltYWdlX25hbWUKICAgICAgICB0aXRsZTogTmFtZSBvZiB0aGUgem9va2VlcGVyIGltYWdlIChp\
ZiBzMmkgaXMgbm90IHVzZWQpLgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6\
ICJzMmktYXBwLXp1dWwtZXhlY3V0b3I6bGF0ZXN0IgogICAgICAgIGRpc3BsYXlfZ3JvdXA6IFp1\
dWwgQ29uZmlndXJhdGlvbgogICAgICAtIG5hbWU6IHp1dWxfbWVyZ2VyX3JlcGxpY2FzCiAgICAg\
ICAgdGl0bGU6IENvdW50IG9mIHpvb2tlZXBlciBpbnN0YW5jZXMgKHNob3VsZCBiZSB1bmV2ZW4p\
CiAgICAgICAgdHlwZTogaW50CiAgICAgICAgZGVmYXVsdDogMQogICAgICAgIGRpc3BsYXlfZ3Jv\
dXA6IFp1dWwgQ29uZmlndXJhdGlvbgogICAgICAtIG5hbWU6IHp1dWxfbWVyZ2VyX2xvY2FsX3N0\
b3JhZ2UKICAgICAgICB0aXRsZTogU2l6ZSBvZiB0aGUgUFYgZm9yIHp1dWwgbWVyZ2VyIGluc3Rh\
bmNlcyAoZWcuIDFHaSkKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiAiMTBH\
aSIKICAgICAgICBkaXNwbGF5X2dyb3VwOiBadXVsIENvbmZpZ3VyYXRpb24KICAgICAgLSBuYW1l\
OiB6dXVsX21lcmdlcl9pbWFnZV9uYW1lCiAgICAgICAgdGl0bGU6IE5hbWUgb2YgdGhlIHpvb2tl\
ZXBlciBpbWFnZSAoaWYgczJpIGlzIG5vdCB1c2VkKS4KICAgICAgICB0eXBlOiBzdHJpbmcKICAg\
ICAgICBkZWZhdWx0OiAiczJpLWFwcC16dXVsLW1lcmdlcjpsYXRlc3QiCiAgICAgICAgZGlzcGxh\
eV9ncm91cDogWnV1bCBDb25maWd1cmF0aW9uCiAgICAgIC0gbmFtZTogenV1bF93ZWJfcmVwbGlj\
YXMKICAgICAgICB0aXRsZTogQ291bnQgb2Ygem9va2VlcGVyIGluc3RhbmNlcyAoc2hvdWxkIGJl\
IHVuZXZlbikKICAgICAgICB0eXBlOiBpbnQKICAgICAgICBkZWZhdWx0OiAxCiAgICAgICAgZGlz\
cGxheV9ncm91cDogWnV1bCBDb25maWd1cmF0aW9uCiAgICAgIC0gbmFtZTogenV1bF93ZWJfaW1h\
Z2VfbmFtZQogICAgICAgIHRpdGxlOiBOYW1lIG9mIHRoZSB6b29rZWVwZXIgaW1hZ2UgKGlmIHMy\
aSBpcyBub3QgdXNlZCkuCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogInMy\
aS1hcHAtenV1bC13ZWI6bGF0ZXN0IgogICAgICAgIGRpc3BsYXlfZ3JvdXA6IFp1dWwgQ29uZmln\
dXJhdGlvbgogICAgICAtIG5hbWU6IG5vZGVwb29sX2xhdW5jaGVyX3JlcGxpY2FzCiAgICAgICAg\
dGl0bGU6IENvdW50IG9mIHpvb2tlZXBlciBpbnN0YW5jZXMgKHNob3VsZCBiZSB1bmV2ZW4pCiAg\
ICAgICAgdHlwZTogaW50CiAgICAgICAgZGVmYXVsdDogMQogICAgICAgIGRpc3BsYXlfZ3JvdXA6\
IE5vZGVwb29sIENvbmZpZ3VyYXRpb24KICAgICAgLSBuYW1lOiBub2RlcG9vbF9sYXVuY2hlcl9p\
bWFnZV9uYW1lCiAgICAgICAgdGl0bGU6IE5hbWUgb2YgdGhlIHpvb2tlZXBlciBpbWFnZSAoaWYg\
czJpIGlzIG5vdCB1c2VkKS4KICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiAi\
czJpLWFwcC1ub2RlcG9vbC1sYXVuY2hlcjpsYXRlc3QiCiAgICAgICAgZGlzcGxheV9ncm91cDog\
Tm9kZXBvb2wgQ29uZmlndXJhdGlvbgogICAgICAtIG5hbWU6IG5vZGVwb29sX2J1aWxkZXJfcmVw\
bGljYXMKICAgICAgICB0aXRsZTogQ291bnQgb2Ygem9va2VlcGVyIGluc3RhbmNlcyAoc2hvdWxk\
IGJlIHVuZXZlbikKICAgICAgICB0eXBlOiBpbnQKICAgICAgICBkZWZhdWx0OiAxCiAgICAgICAg\
ZGlzcGxheV9ncm91cDogTm9kZXBvb2wgQ29uZmlndXJhdGlvbgogICAgICAtIG5hbWU6IG5vZGVw\
b29sX2J1aWxkZXJfbG9jYWxfc3RvcmFnZQogICAgICAgIHRpdGxlOiBTaXplIG9mIHRoZSBQViBm\
b3Igbm9kZXBvb2wgYnVpbGRlciBpbnN0YW5jZXMgKGVnLiAxR2kpCiAgICAgICAgdHlwZTogc3Ry\
aW5nCiAgICAgICAgZGVmYXVsdDogIjEwMEdpIgogICAgICAgIGRpc3BsYXlfZ3JvdXA6IE5vZGVw\
b29sIENvbmZpZ3VyYXRpb24KICAgICAgLSBuYW1lOiBub2RlcG9vbF9idWlsZGVyX2ltYWdlX25h\
bWUKICAgICAgICB0aXRsZTogTmFtZSBvZiB0aGUgem9va2VlcGVyIGltYWdlIChpZiBzMmkgaXMg\
bm90IHVzZWQpLgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJzMmktYXBw\
LW5vZGVwb29sLWJ1aWxkZXI6bGF0ZXN0IgogICAgICAgIGRpc3BsYXlfZ3JvdXA6IE5vZGVwb29s\
IENvbmZpZ3VyYXRpb24KICAgIHVwZGF0ZXNfdG86CiAgICAgIC0gZGV2CiAgLSBuYW1lOiBkZXYK\
ICAgIGRlc2NyaXB0aW9uOiBUaGlzIGRldmVsb3BtZW50IHBsYW4gZGVwbG95cyB6dXVsLWFwYiAo\
dXNlIGRlZmF1bHRzKQogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlO\
YW1lOiBEZXZlbG9wbWVudAogICAgcGFyYW1ldGVyczoKICAgICAgW10KICAgICMgdXBkYXRlc190\
bzoKICAgICMgICAtIHByb2QK"



ENV BUNDLE_DEBUG=true

ADD playbooks /opt/apb/actions
ADD . /opt/ansible/roles/zuul-apb
RUN chmod -R g=u /opt/{ansible,apb}

USER apb