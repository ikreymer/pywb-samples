### PyWb Samples

**A live demo of this pywb sample project can be found at: http://pywb.herokuapp.com/**

This repository contains a collection of sample archived content (WARC and CDX) files, for use with [pywb](https://github.com/ikreymer/pywb) wayback replay.

The files are a bit larger (~30M) and are not included in the core pywb distribution.

(The pywb distribution does include a few smaller archive files necessary for unit testing)


### Installation


1. Clone Repo: ```git clone https://github.com/ikreymer/pywb-samples.git pywb-samples```

2. Create (or using existing) Virtualenv: ```virtualenv pywb-venv; source pywb-venv/bin/activate```

3. Install reqs (this includes pywb and uWSGI) ```pip install -r requirements.txt```

4. Run ```uwsgi uwsgi.ini```


For best results, uWSGI is started 10 workers on port 9080.
Feel free to adjust the settings as needed in [uwsgi.ini](uwsgi.ini)
If startup is successful, the log will contain:

```... [INFO]: *** pywb app inited with config from "create_wb_router"```

### Samples

The following archived content is available in this collection:

Basic Samples:

* [http://localhost:9080/pywb/http://example.com/](http://localhost:9080/pywb/http://example.com/)

* [http://localhost:9080/pywb/http://iana.org/](http://localhost:9080/pywb/http://iana.org/)

Social Media:

* [http://localhost:9080/pywb/https://www.facebook.com/digitalpreservation](http://localhost:9080/pywb/https://www.facebook.com/digitalpreservation)

* [http://localhost:9080/pywb/https://twitter.com/netpreserve](http://localhost:9080/pywb/https://www.twitter.com/netpreserve)

* [http://localhost:9080/pywb/http://www.flickr.com/photos/library_of_congress/sets/72157632529103585/](http://localhost:9080/pywb/http://www.flickr.com/photos/library_of_congress/sets/72157632529103585/)

* [http://localhost:9080/pywb/http://www.flickr.com/photos/library_of_congress/sets/72157612249760312/](http://localhost:9080/pywb/http://www.flickr.com/photos/library_of_congress/sets/72157612249760312/)


#### Proxy Mode Viewing

Some replay material (eg. Flickr) may work best in proxy mode. To try proxy mode:

1. Set your browser settings (easiest in Firefox) *Automatic Proxy configuration URL* to: **http://localhost:9080/proxy.pac**

2. Try loading:

  * http://www.flickr.com/photos/library_of_congress/sets/72157612249760312/

  * http://www.flickr.com/photos/library_of_congress/sets/72157632529103585/


### Capture Info

All samples were captured manually using browser based crawling, mostly via [warcprox](https://github.com/internetarchive/warcprox/)
