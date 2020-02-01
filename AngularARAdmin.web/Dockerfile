FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["AngularARAdmin.web/AngularARAdmin.web.csproj", "AngularARAdmin.web/"]

RUN dotnet restore "AngularARAdmin.web/AngularARAdmin.web.csproj"
COPY . .
WORKDIR "/src/AngularARAdmin.web"
RUN dotnet build "AngularARAdmin.web.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "AngularARAdmin.web.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "AngularARAdmin.web.dll"]