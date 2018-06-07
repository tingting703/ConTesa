mod_include.la: mod_include.lo
	$(MOD_LINK) mod_include.lo
DISTCLEAN_TARGETS = modules.mk
static =  mod_include.la
shared = 
