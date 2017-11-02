# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.eul_2.Debug:
/Users/petros/Documents/projecteuler.net/Eul_2/build/bin/Debug/eul_2:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_2/build/bin/Debug/eul_2


PostBuild.eul_2.Release:
/Users/petros/Documents/projecteuler.net/Eul_2/build/bin/Release/eul_2:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_2/build/bin/Release/eul_2


PostBuild.eul_2.MinSizeRel:
/Users/petros/Documents/projecteuler.net/Eul_2/build/bin/MinSizeRel/eul_2:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_2/build/bin/MinSizeRel/eul_2


PostBuild.eul_2.RelWithDebInfo:
/Users/petros/Documents/projecteuler.net/Eul_2/build/bin/RelWithDebInfo/eul_2:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_2/build/bin/RelWithDebInfo/eul_2




# For each target create a dummy ruleso the target does not have to exist
