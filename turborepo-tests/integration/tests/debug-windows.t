Setup
  $ . ${TESTDIR}/../../helpers/setup_integration_test.sh monorepo_dependency_error

Run debug npm stuff
  $ echo "PATHEXT=$PATHEXT"; echo $PATH; pwd; echo $PRYSK_TEMP; which npm; ls -l "$(dirname "$(which npm)")" || :; turbo build || :; env|grep ORIGINAL_; export PATH=$ORIGINAL_PATH; which npm || :; ls -l "$(dirname "$(which npm)")" || :; turbo build || :
  hmm ok
