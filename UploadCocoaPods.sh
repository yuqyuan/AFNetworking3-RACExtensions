#!/bin/sh
basepath=$(cd `dirname $0`; pwd)
podName='AFNetworking3-RACExtensions'
repoName='glspecs'
privateSource='https://code.aliyun.com/ecarx-ios/GLSpecs.git'

pod lib lint $podName.podspec --sources=$privateSource,https://github.com/CocoaPods/Specs.git --allow-warnings

pod repo add $repoName git@code.aliyun.com:ecarx-ios/GLSpecs.git

pod repo push $repoName $podName.podspec --sources=$privateSource,https://github.com/CocoaPods/Specs.git --allow-warnings
