#create app
mkdir webapp
cd webapp
dotnet new mvc
dotnet build
dotnet run

#run docker image 
docker build -t webapp .
docker run -d -p 8080:80 --name myapp webapp
docker ps -a