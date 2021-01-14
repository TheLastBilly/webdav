# WEBDAV
A container image with a webdav server for the lazy.

## Usage
```bash
docker run --name webdav -p [PORT]:80 -v /path/to/your/share:/data/ -e DAV_USER=[USERNAME] -e DAV_PASSWORD=[PASSWORD] -d thelastbilly/webdav
```

You can now access your share from **http://localhost:[PORT]** or **dav:://admin@localhost:[PORT]** with the **[USERNAME]** and **[PASSWORD]** you specified above.