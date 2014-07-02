# 0.0.5 (2014-07-XX)

" Bullet with notify wings (depite all my rage I am still just a configuration page) :metal:"

### Headline

### Features
  * sphere-common: All service calls and return values are not validated at the target
  * sphere-common: Data in a device batch 'set' is now validated
  * sphere-schemas: Notification and configuration screen schemas
  * sphere-common: Driver configuration and notification events
  * driver-hue: Notifications

### Bug fixes
  * sphere-common: config - sphere_debug=true environment variable now works as expected

### Known Issues

# 0.0.4 (2014-06-27)

" I can't stop loving hue :sunglasses: "

### Headline
Intelligence has began! Contextual lights managing Hue & LIFX.

### Features
  * sphere-intelligence: contextual lights!
  * sphere-web-static: On/Off buttons
  * sphere-web-static: UI for enabling contextual lights in a room.
  * driver-hue: enabled!
  * driver-lifx: enabled! (Note: LIFX firmware v1.2 required)
  * sphere-common: Add state batching and other protocol events
  * sphere-schemas: colour - Add temperature and x/y modes
  * sphere-schemas: Initial media and media-control protocols


### Bug fixes
  * sphere-common: Handle channels for non-existent protocols
  * sphere-zigbee: various fixes
  * sphere-web-static: Associated devices are now hidden from the find devices list
  * sphere-web-static: Clicking a room no longer restarts calibration

### Known Issues
  * The on/off buttons in the UI do not remember state

### Screenshots

<img src="https://s3.amazonaws.com/assets.sphere.ninja/img/sphere-dev-release-0.0.4-1" width="49%" />
<img src="https://s3.amazonaws.com/assets.sphere.ninja/img/sphere-dev-release-0.0.4-2" width="49%" />


# 0.0.3 (2014-06-20)

" I'm a socket man :rocket: "

### Headline
Much more complete Sphere API, and some example applications using the ZigBee socket.

### Features
  * sphere-director: Enable driver-zigbee!
  * sphere-schemas: Services can now define required methods
  * sphere-common: Promises-based Sphere api e.g. ```Ninja.Sphere.rooms().then(function(rooms) {...})```
  * sphere-web: Can now update a thing name
  * sphere-web: Can now assign a thing into a room manually.
  * driver-zigbee: The power socket works (power and on-off protocols)

### Bug fixes
  * sphere-bluetooth-smart: Much lower CPU utilisation
  * Removed unused dependencies, fixed all JSHint warnings.

### Screenshots

<img src="http://i.imgur.com/WQuNMAH.png" width="49%" />
<img src="http://i.imgur.com/fYKSFBg.png" width="49%" />

---

# 0.0.2 (2014-06-13)

" apt, apt, baby :icecream: "

### Headline
Initial `thing` API

### Features
  * SphereAPI: Initial cut of Sphere API (Initially things only)
  * Reduce package size by 50% and huge speed increase when apt-get dist-upgrading
  * sphere-home-cloud: Far more responsive location events
  * sphere-home-cloud: Increased Model methods to make interaction more powerful
  * sphere-schemas: Schemas for location, illuminance, moisture
  * sphere-web: Expose module CPU & memory utilisation

### Bug fixes
  * Fix location channel not being created when adding a person
  * Fix 'not opened' error from WebsocketServer
  * Fix /etc/default/ninja overrides file not being present

### Screenshots

<img src="http://i.imgur.com/AxifF1Z.png" width="49%" />

---

# 0.0.1 (2014-06-06)

" If you're appy and you know it clap your hands :clap: :clap: "

### Headline
Added JSON-Schema defined RPC-over-MQTT Services (required for apps)

### Features
  * sphere-common: The service definitions/protocols now use named parameters, which should ease rest<->service connectivity.
  * sphere-client: Use first non-internal ipv4 address as local address
  * Add "Ninja" as global variable
  * sphere-client: Replace "request" dep with built-in http.request
  * sphere-home-cloud: Expose RoomModel, ThingModel, DeviceModel as RPC services over MQTT
  * sphere-common: Pass environments through from the cli (ie ```./start.sh --cloud-production --debug```)
  * sphere-common: Report uncaught exceptions to BugSnag
  * sphere-common: Call (Driver/App).stop on process exit, to allow them to clean up.
  * sphere-director: Wait for child processes to exit before exiting ourselves
  * sphere-web: A new favicon! :tada:
  * sphere-web: Brand new, fancy layout
  * mqtt-bridgify: Improved reconnect logic

### Bug fixes
  * sphere-home-cloud: Fix for #8 - "TypeError: Cannot read property 'signatures' of null"
  * sphere-common: Temporarily enable self-signed certificates for the cloud connection (with a warning)
  * sphere-client: Fix requestCredentials retry timeout
  * sphere-common: Fix TMI SchemaValidator logging. (Overshare buddy!)
  * driver-bluetooth-smart: Cleanup noble's ble process on exit. Fixes no ble on service restart.
  * sphere-home-cloud: Disable CORS in production
  * sphere-common: Increase maxListeners on MQTT connection (Fixes warning about potential leak)
  * sphere-schemas: Minimum BLE RSSI is -128, not -127
  * mqtt-bridgify: Updated go mqtt library (fixes crash)

### Screenshots

<img src="https://s3-ap-southeast-2.amazonaws.com/uploads-au.hipchat.com/25403/148552/iY7NKXxet1de7q8/Screenshot%202014-06-06%2016.00.36.png" width="33%" />
<img src="https://s3-ap-southeast-2.amazonaws.com/uploads-au.hipchat.com/25403/148552/xwLpDfGfCuG3Omi/Screenshot%202014-06-06%2016.00.32.png" width="33%" />
<img src="https://s3-ap-southeast-2.amazonaws.com/uploads-au.hipchat.com/25403/148552/8c3muXvThvrstz3/Screenshot%202014-06-06%2016.07.04.png" width="33%" />

---

# 0.0.0 (2014-06-02)

  * initial version
