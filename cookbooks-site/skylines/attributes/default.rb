override["postgis"]["version"] = "2.0"
override["postgresql"]["version"] = "9.1"

override["redisio"]["servers"] = [{'name' => 'skylines', 'port' => '6379'}]

override['java']['openjdk_packages'] = ['openjdk-7-jre-headless']
override['java']['jdk_version'] = '7'
