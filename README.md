# libmegaplan
Library to work with [Megaplan](http://megaplan.ru) [API](https://help.megaplan.ru/API).  
ASCII only as it statically linked to libcurl.  
Windows dll is [here](http://deseven.info/sys/libmegaplan.zip), contact me if you need mac/linux binaries.  

# usage
**mega_version()** - returns string with lib version  
**mega_auth(login,password,base_url,agent)** - returns string (JSON) with authorization result, "0" if authorization failed and "-1" if there is no answer. Grab *AccessId* and *SecretKey* from it.  
**mega_query(access_id,secret_key,query,base_url,timezone,agent)** - returns string (JSON) with query result, "0" if authorization failed and "-1" if there is no answer.  
**mega_comparedates(date1,date2)** - compares dates in Megaplan format (YYYY-MM-DD hh:mm:ss), returns true if the second date is the latter.  

# notes
If you keep getting failed authorizations while sending queries - doublecheck your timezone and time.