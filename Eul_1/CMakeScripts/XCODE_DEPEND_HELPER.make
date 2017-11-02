# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.eul_1.Debug:
/Users/petros/Documents/projecteuler.net/Eul_1/build/bin/Debug/eul_1:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_1/build/bin/Debug/eul_1


PostBuild.eul_1.Release:
/Users/petros/Documents/projecteuler.net/Eul_1/build/bin/Release/eul_1:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_1/build/bin/Release/eul_1


PostBuild.eul_1.MinSizeRel:
/Users/petros/Documents/projecteuler.net/Eul_1/build/bin/MinSizeRel/eul_1:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_1/build/bin/MinSizeRel/eul_1


PostBuild.eul_1.RelWithDebInfo:
/Users/petros/Documents/projecteuler.net/Eul_1/build/bin/RelWithDebInfo/eul_1:
	/bin/rm -f /Users/petros/Documents/projecteuler.net/Eul_1/build/bin/RelWithDebInfo/eul_1




# For each target create a dummy ruleso the target does not have to exist
