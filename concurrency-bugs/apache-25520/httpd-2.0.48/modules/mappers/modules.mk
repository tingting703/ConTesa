mod_negotiation.la: mod_negotiation.lo
	$(MOD_LINK) mod_negotiation.lo
mod_dir.la: mod_dir.lo
	$(MOD_LINK) mod_dir.lo
mod_imap.la: mod_imap.lo
	$(MOD_LINK) mod_imap.lo
mod_actions.la: mod_actions.lo
	$(MOD_LINK) mod_actions.lo
mod_userdir.la: mod_userdir.lo
	$(MOD_LINK) mod_userdir.lo
mod_alias.la: mod_alias.lo
	$(MOD_LINK) mod_alias.lo
mod_so.la: mod_so.lo
	$(MOD_LINK) mod_so.lo
DISTCLEAN_TARGETS = modules.mk
static =  mod_negotiation.la mod_dir.la mod_imap.la mod_actions.la mod_userdir.la mod_alias.la mod_so.la
shared = 
