# Berlioz base

A minimal Berlioz Web application to use as a base for your project and 
following the recommended guidelines for Berlioz.

# Setup

You can start using Berlioz with minimal setup. All you *really* need is to download it and have Java JDK 8 installed on your machine. 

You can download Java from [Oracle](http://www.oracle.com/technetwork/java/javase/overview/index.html)
or get the [OpenJDK](http://openjdk.java.net/) if you're on Linux or MacOS.

You can simply [download the zip](https://github.com/pageseeder/berlioz-base/archive/master.zip), or 
use a Git client to get a copy of the Berlioz base repository. 

If you already have Git installed, use the following command:
```
 $ git clone https://github.com/pageseeder/berlioz-base.git
 $ cd berlioz-base
```

# Usage

This project includes a Gradle wrapper to start the application.

Gradle will automaticallly download all dependencies, including Jetty and start
the Web application (be patient the first time!).

You can start the Berlioz with:

```
 $ gradlew run
```

When Berlioz starts it will print the following on the console:

```
[BERLIOZ_INIT] ===============================================================
[BERLIOZ_INIT] Initialing Berlioz 0.10.2...

...

[BERLIOZ_INIT] Done!
[BERLIOZ_INIT] ===============================================================
```

You can then access the app at:
 - [http://localhost:8999/](http://localhost:8099/)
 - [https://localhost:8444/](https://localhost:8444/)

# Troubleshooting

If Gradle is unable to compile the classes, make sure that the default Java home
is a JDK and not only the JRE.

If Gradle is unable to start Jetty, make sure that the ports 8099 and 8444 are
available.

