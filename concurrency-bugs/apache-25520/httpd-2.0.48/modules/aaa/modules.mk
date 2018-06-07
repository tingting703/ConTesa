mod_access.la: mod_access.lo
	$(MOD_LINK) mod_access.lo
mod_auth.la: mod_auth.lo
	$(MOD_LINK) mod_auth.lo
DISTCLEAN_TARGETS = modules.mk
static =  mod_access.la mod_auth.la
shared = 
