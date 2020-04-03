echo "[deploy] start deploy circleci-demo"
ps -ef | grep springboot-demo | grep -v grep | awk '{print $2}' | xargs kill -9  || echo "kill fail "
java -jar target/springboot-demo-0.0.1-SNAPSHOT.jar > a.log &
