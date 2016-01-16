android_home="/usr/local/opt/android-sdk"

if [ -d $android_home ]; then
	export ANDROID_HOME=$android_home
fi

unset android_home
