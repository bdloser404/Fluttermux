 ## Run Flutter in Termux Natively - Fluttermux
**Fluttermux** is a powerful bash script tailored to simplify the installation and setup of Flutter within your Termux environment. With Fluttermux, you get the latest Flutter SDK, alongside essential tools like Neovim, JDK 19 Support, and Gradle. It optimizes Termux for efficient Flutter app development with adb hot-reloading, all while running natively on your Android device for superior performance and stability. Compatible with all Android (aarch64/arm64) devices, Fluttermux is your shortcut to hassle-free Flutter development in Termux."
Features:


- 🚀 **Latest Flutter SDK**: Instantly install the newest Flutter SDK.
  
- 📝 **Additional Tools**: Includes Neovim, JDK 19 Support, and Gradle.
  
- 🔧 **Optimized Termux**: Configure for efficient Flutter app development with adb hot-reloading.
  
- ⚙ **Native Performance**: Runs natively in Termux, maximizing your device's resources.
  
- 📱 **Device Compatibility**: Works with all Android (aarch64/arm64) devices.
  
- 🌟 **Multi-Device Deployment**: Deploy Flutter projects on Android and iOS devices via adb.
  
- 🧩 **User-Friendly**: Easy setup for your Flutter journey

<p align="middle" float="left">
  <img src="https://github.com/bdloser404/Fluttermux/blob/main/img/hotreload.png" width="40%" />
  
  <img src="https://github.com/bdloser404/Fluttermux/blob/main/img/devtool.png" width="40%" /> 
</p>


**Fluttermux**: Your all-in-one Flutter development companion for Termux. Streamline Flutter setup, enjoy native performance, and access Flutter DevTools, Widget Inspector, and more – all from your terminal. Elevate your Flutter development experience with **Fluttermux**."

## Installaion

>[!WARNING]
>I am aware that mistakes and errors are inevitable, especially in a complex project like Fluttermux. I am committed to fixing any errors that are found. I ask for your understanding and patience as I work to improve Fluttermux. In the meantime, I recommend that you update and upgrade Termux before trying to install Fluttermux. This will help to ensure that Fluttermux runs smoothly and without errors.

Run Installer:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/bdloser404/Fluttermux/main/install.sh)"
```

## Intialize Your First Project
Once the installation is complete, you can start creating Flutter apps by running the following command:
```
fluttermux --create myapp 
```

Now Build Debug App:
```
flutter build apk --debug
```
It will download and setup gradle Then you are ready for build your dream app.

>[!WARNING]
> Gradle task may take 15-20 min for first time. (depending on your network speed)

Run app Web Mode:
```

flutter run -d web-server --web-port=8000
```
>[!IMPORTANT]
>The `fluttermux --fix gradle` command is very important. You need to run this command every time you create a new Flutter project with `flutter create <project>`. This command fixes the permissions for the gradlew executable, updates the Gradle wrapper distribution URL to support JDK 19, and sets the Gradle property for using aapt2 (aarch64).

## Usage
Fluttermux provides a set of commands and options to help you manage your Flutter environment efficiently. Here are the key options available:

`--create <task>`: This  option allows you to create flutter project. its equivalent to `flutter create <appname>` but then it will fix your project for gradle support.
```
fluttermux --create blogapp
```

`--patch <task>`: Use this option to manually patch specific components of your Flutter environment, such as SDK, Dart, Flutter, or Java. For example, to patch the SDK, you can run:
```
fluttermux --patch sdk
```

`--fix <task>`: If you encounter issues with Gradle, Flutter, or other components, you can use this option to fix them. For instance, to fix Flutter and ensure proper permissions, use:
``` 
fluttermux --fix flutter
 ```

`--ide`: This option allows you to install a Flutter IDE for a more integrated development experience.
you can simply run:
```
fluttermux --ide
```

>[!NOTE]
> IDE is configured by default.

`--uninstall`: If you ever want to remove Fluttermux from your system, you can simply run:
```
fluttermux --uninstall
```

`--help`: If you need a quick reference to the available options and their usage, use the --help option.use:
```
fluttermux --help
```

## How TO Connect ADB Devices

### Get ADB IP

In VMOS, navigate to "Settings" within the virtual Android environment.

- Scroll down and find "Master Setting."

- Inside "Master Setting," look for "ADB Connect `IP:Port`." You will see an IP address and port number, for example, `192.168.0.100:5667`.

- Now, your VMOS Android environment is ready to be connected via ADB using the provided IP address and port number (`192.168.X.X:5667` in this example).

<p align="middle" float="left">
  <img src="https://github.com/bdloser404/Fluttermux/blob/main/img/vmos.png" width="40%" />
</p>

You can use these methods to perform ADB actions on Termux

### Connect to ADB (VMOS)

from Termux, use:
```
adb connect 192.168.X.X:5667
```

>[!IMPORTANT]
> Use your ADB `ip:port` instead of `192.168.X.X:5667`

## Connect to ADB (Wireless Debugging Android 11+)

### Step 1: Enable Wireless Debugging on Your Android Device

- Open the "Settings" app on your Android device.
- Scroll down and select "Developer options." If you don't see this option, you can enable it by tapping on "About phone" and then tapping on the "Build number" seven times.
- Inside "Developer options," scroll down and find "Wireless Debugging." Enable it.

Follow below screenshot to get pair addess:
<p align="middle" float="left">
  <img src="https://github.com/bdloser404/Fluttermux/blob/main/img/wireless.png" width="30%" />
  <img src="https://github.com/bdloser404/Fluttermux/blob/main/img/pair.png" width="30%" />
  <img src="https://github.com/bdloser404/Fluttermux/blob/main/img/pair_code.png" width="30%" />
  
</p>

Now pair from Termux:
```
adb pair 192.168.x.x:41xxx
```
Check Connected ADB devices:
```
flutter devices
```
>[!NOTE]
>Make Sure Atlest One Device is Connected Before Running `flutter run`

### Run Flutter App With Connected Devices

Use your ADB address to run FLutter app
```
flutter run -d 192.168.X.X:5667
```
Or you can use devices name:
```
flutter run -d "moto g9 play"
```


## Credit
<blockquote>
"To my amazing friends,

Moha Li, you ignited the spark, and Susan, you fueled the flame. Fluttermux wouldn't be here without your expertise and support. Thanks for making Flutter development a breeze!

With gratitude,
Amanullah"
</blockquote>

## Thank  You for Being Part of Our Journey

As we wrap up, remember that Fluttermux isn't just about code; it's about your journey as a developer. It's about the late-night debugging sessions, the 'Aha!' moments, and the joy of creating something amazing.

Fluttermux is our way of saying, 'We've got your back.' So, as you embark on your Flutter adventures, know that you're not alone. We're here, right beside you, cheering you on, because your passion fuels our project.

Together, we'll keep simplifying, optimizing, and elevating the world of Flutter development. Thank you for being part of our journey. Now, let's code, create, and inspire.

Happy Fluttering!
