
::build angular UI

echo "##################### Building Angular UI ##################################"

cd "..\Nimbus-shopping-Cart-gopa\src\main\frontend"
call npm install
call npm run build
echo "##################### Angular UI build completed ##################################"
cd..
cd..
cd..

echo "##################### Building SpringBoot UI Server App ##################################"
call mvn clean install
echo "##################### SpringBoot UI Server App build completed ##################################"

echo "##################### Dockerizing SpringBoot UI Server App ##################################"
docker build --tag=etailer-ui .
echo "##################### SpringBoot UI Server App Docker image created ##################################"
cd..
 
