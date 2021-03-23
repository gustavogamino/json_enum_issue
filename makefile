install:
	dart pub get

clean:
	find . -type f -name '*.g.dart' -delete
	dart run build_runner clean

build: clean
	dart run build_runner build --delete-conflicting-outputs --verbose
	
it-fail: install
	while $(MAKE) build; do :; done

