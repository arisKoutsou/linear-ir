# bachelor-thesis
Repository for my bachelor thesis(University of Athens).

# Build with make and Mono
You will need Mono 4.4.2 or later and NuGet Package Manager
1. Install NuGet Package Manager and update
* ``` $ sudo apt-get install nuget ```
* ``` $ sudo nuget update -self ```
2. Change directory into 'make-build/'
* ``` $ cd make-build/ ```
3. Get required dependencies
* ``` $ make dependancies ```
4. Build targets
* ``` $ make <target>```

# Build with .NET Core
Invoke the dotnet cli in the root directory:
```
$ dotnet build
$ dotnet run
```

