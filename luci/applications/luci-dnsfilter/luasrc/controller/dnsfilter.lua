
module("luci.controller.dnsfilter", package.seeall)

function index()
	require("luci.i18n")
	luci.i18n.loadc("cpulimit")
	if not nixio.fs.access("/etc/config/dnsfilter") then
		return
	end

	local page = entry({"admin", "RA-MOD", "dnsfilter"}, cbi("dnsfilter"), _("dnsfilter"), 65)
	page.i18n = "dnsfilter"
	page.dependent = true
	
end
