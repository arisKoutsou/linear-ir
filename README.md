# bachelor-thesis
Repository for my bachelor thesis(University of Athens).

# Prerequisites
* NuGet Package Manager
* Cecil (https://www.nuget.org/packages/Mono.Cecil/)

# Build with Makefile
1. Install NuGet Package Manager
* ``` $ sudo apt-get install nuget ```
2. Change directory into 'make-build/'
* ``` $ cd make-build/ ```
3. Get required dependencies
* ``` $ make dependancies ```
4. Build targets
* ``` $ make <target>```

# Build with .NET Core
Get the Mono.Cecil nuget package and then invoke the dotnet cli in the root directory:
```
$ dotnet build
```

