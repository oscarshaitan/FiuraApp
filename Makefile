generate:
	flutter packages pub run build_runner build --delete-conflicting-outputs

watch:
	flutter packages pub run build_runner watch --delete-conflicting-outputs

atc-ios:
	flutter build ios --release 

atc-android:
	flutter build apk