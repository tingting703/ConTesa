mod_log_config.la: mod_log_config.lo
	$(MOD_LINK) mod_log_config.lo
DISTCLEAN_TARGETS = modules.mk
static =  mod_log_config.la
shared = 
