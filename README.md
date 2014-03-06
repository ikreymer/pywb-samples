### PyWb Samples

This repository contains a collection of sample archived content (WARC and CDX) files, for use with [pywb](https://github.com/ikreymer/pywb) wayback replay.

The files are a bit larger (~30M) and are not included in the core pywb distribution.

(The pywb distribution does include a few smaller archive files necessary for unit testing)


### Installation


1. Clone Repo: ```git clone https://github.com/ikreymer/pywb-samples.git pywb-samples```

2. Create (or using existing) Virtualenv: ```virtualenv pywb-venv; source pywb-venv/bin/activate```

3. Install reqs (this includes pywb and uWSGI) ```pip install -r requirements.txt```

4. Run! ```run-samples.sh```


For best results, this run script starts up uWSGI with 10 workers on port 9080.
Feel free to adjust as needed in the [run-samples.sh](run-samples.sh) script
If startup is successful, the log will contain:

```... [INFO]: *** pywb app inited with config from "create_wb_router"```

### Samples

The following archived content is available in this collection:


Basic Samples:

* [http://localhost:9080/pywb/http://example.com/](http://localhost:9080/pywb/http://iana.org/)

* [http://localhost:9080/pywb/http://iana.org/](http://localhost:9080/pywb/http://iana.org/)

Social Media:

* [http://localhost:9080/pywb/https://www.facebook.com/digitalpreservation](http://localhost:9080/pywb/https://www.facebook.com/digitalpreservation)

* [http://localhost:9080/pywb/https://twitter.com/netpreserve](http://localhost:9080/pywb/https://www.facebook.com/digitalpreservation)

