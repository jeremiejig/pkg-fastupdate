# SYNOPSIS
#   fastupdate [options]
#
# USAGE
#   Options
#

function init -a path --on-event init_fastupdate

end

function fastupdate -d "FastUpdate Print the git version"
	if test -d $OMF_PATH/pkg/fastupdate
		set -xl GIT_WORK_TREE $OMF_PATH/pkg/fastupdate
	else if test -d $OMF_CONFIG/pkg/fastupdate
		set -xl GIT_WORK_TREE $OMF_CONFIG/pkg/fastupdate
	end
	git -C $GIT_WORK_TREE describe --always --long --dirty
end

function uninstall --on-event uninstall_fastupdate

end
