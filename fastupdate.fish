# SYNOPSIS
#   fastupdate [options]
#
# USAGE
#   Options
#

function init -a path --on-event init_fastupdate

end

function fastupdate -d "FastUpdate Print the git version"
	omf.cd fastupdate
	type cd
	git describe --always --long --dirty
	popd
end

function uninstall --on-event uninstall_fastupdate

end
