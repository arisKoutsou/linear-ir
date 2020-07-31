![logo](/stack-logo.png?raw=true)
# linear-ir
Conversion of CLI stack-based intermediate language to a register-based representation.

We briefly present the Virtual Execution System (VES) of the Common Language Infra
structure (CLI) and the properties of the stack based Common Intermediate Language
(CIL). Then we inspect managed assemblies by browsing through types, type members
and CIL method instructions. A Control Flow Graph (CFG) is generated for method instruc
tions. This CFG method representation is used as a first approach to convert the stack-
based intermediate representation to a register-based (linear) representation. A second
approach to this conversion is examined which uses important properties of managed CIL
code. Finally, we compare our results and highlight future applications of register-based
IL in code analysis.

A more detailed presentation of the project can be found in the file ``` thesis.pdf ```.

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

For a command line executable build: ``` $ make linear-ir```

For a library containing the linear-ir API build: ``` $ make lib ```

## Build and Run NUnit Tests
* ``` $ make test-dependencies ```
* ``` $ make test-run ```
## Generate Documentation with Doxygen
* ``` $ make doc ```

# Build with .NET Core
Invoke the dotnet cli in the root directory:
```
$ dotnet build
$ dotnet run
```

