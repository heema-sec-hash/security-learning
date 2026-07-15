* To audit a server for security, we use curl command



* Can use the following command to check if a specific sensitive file exists on a server
-v: verbose (shows headers)
-I: fetch headers only (faster)
curl -vI https://example.com/admin/config.php

