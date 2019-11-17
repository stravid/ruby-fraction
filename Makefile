UNIT_TEST_FILES:= $(wildcard tests/unit/*_test.rb)

.PHONY: unit-tests
unit-tests: Gemfile.lock
	@ruby -I $(CURDIR) $(foreach file, $(UNIT_TEST_FILES), -r $(file)) -e exit

.PHONE: test
test:
	@scripts/test-watcher.sh
