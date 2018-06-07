mod_env.la: mod_env.lo
	$(MOD_LINK) mod_env.lo
mod_setenvif.la: mod_setenvif.lo
	$(MOD_LINK) mod_setenvif.lo
DISTCLEAN_TARGETS = modules.mk
static =  mod_env.la mod_setenvif.la
shared = 
