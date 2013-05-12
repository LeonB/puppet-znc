# Class: znc::params
#
# This class defines default parameters used by the main module class znc
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to znc class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class znc::params {

	### Application related parameters

	$packages = $::operatingsystem ? {
		default => ['znc', 'znc-extra', 'znc-python']
	}

	$enabled = true

}
