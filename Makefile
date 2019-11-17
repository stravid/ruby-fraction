UNIT_TEST_FILES:= $(wildcard tests/unit/*_test.rb)

.PHONY: unit-tests
unit-tests:
	@ruby -I $(CURDIR) $(foreach file, $(UNIT_TEST_FILES), -r $(file)) -e exit

.PHONY: test
test:
	@scripts/test-watcher.sh
