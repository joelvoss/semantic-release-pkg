#!/bin/bash

set -e
PATH=./node_modules/.bin:$PATH

# Export environment variables from `.env`
if [ -f .env.local ]
then
  export $(cat .env.local | sed 's/#.*//g' | xargs)
fi

# //////////////////////////////////////////////////////////////////////////////
# START tasks

build() {
  rm -rf dist

  pkg . $*
}

clean() {
  rm -rf dist node_modules $*
}

release() {
  semantic-release $*
}

default() {
  build $*
}

# END tasks
# //////////////////////////////////////////////////////////////////////////////

${@:-default}
