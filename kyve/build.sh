CHAINS=( evm near cosmos celo evm-snapshots solana-snapshots )
for GIT_SHORTNAME in "${CHAINS[@]}"
do
  LATEST_VERSION=$(git -c 'versionsort.suffix=-' ls-remote --tags --sort='v:refname' https://github.com/KYVENetwork/$GIT_SHORTNAME.git | tail -1 | sed 's:.*/::')
  [ -d build ] || mkdir build
  cd build
  wget https://github.com/KYVENetwork/$GIT_SHORTNAME/archive/refs/tags/$LATEST_VERSION.tar.gz
  gzip -df $LATEST_VERSION.tar.gz
  tar -xvf $LATEST_VERSION.tar
  cd $GIT_SHORTNAME-${LATEST_VERSION:1}
  yarn install
  yarn build:binaries
  cp out/index-linux ../../kyve-$GIT_SHORTNAME-linux
  cd ../../
  rm -rf build
done

