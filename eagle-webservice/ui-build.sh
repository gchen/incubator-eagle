#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo "=============== Web APP Building Start ==============="
echo "Environment Check..."
# Pre-build check
if [ -z "$(command -v git)" ]
then
	echo "git not installed!"
	exit 1
fi
if [ -z "$(command -v npm)" ]
then
	echo "npm not installed!"
	exit 1
fi
echo "Environment Check...Pass"

# npm install
cd src/main/webapp
echo "npm install..."
npm install

# grunt build
echo "grunt building..."
npm run grunt

echo "================ Web APP Building End ================"