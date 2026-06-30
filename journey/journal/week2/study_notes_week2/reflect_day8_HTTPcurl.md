1. What real-world problem does today's topic solve?
HTTP enables data exchange. HTTPS adds encryption (TLS) to prevent interception. curl provides a CLI tool for testing and automating these interactions.

2. Could I explain HTTP to someone else?
Yes: It is a request-response protocol where a client requests a resource and the server returns it, similar to placing an order at a restaurant.

3. How would an attacker use this knowledge?
To sniff unencrypted traffic, probe servers for hidden files or API endpoints, and manipulate request parameters to exploit vulnerabilities.

4. How would a defender use this knowledge?
To audit security headers, monitor logs for suspicious traffic patterns, and verify that authentication tokens are correctly required.

5. Why is HTTP called a stateless protocol?
Because the server does not store memory of past requests. Each transaction is treated as brand new unless session management (cookies/tokens) is used.

6. What is the difference between GET and POST?
GET retrieves data and sends parameters in the URL; POST submits data to be processed and sends it in the request body.

7. When would you use PUT instead of PATCH?
Use PUT to replace an entire resource. Use PATCH to perform a partial update on specific fields.

8. What information is usually stored in HTTP headers?
Metadata such as Content-Type, Authorization (tokens), Cookie (sessions), and User-Agent.

9. Why is HTTPS critical for login pages?
It encrypts credentials in transit, preventing attackers from intercepting usernames and passwords in plaintext.

10. Which curl option do you think you'll use the most during security testing?
The -v (verbose) option, as it displays the full request and response headers, which is essential for identifying misconfigurations.

11. If you intercepted an HTTP request, what sensitive information might you see?

&#x09;Session cookies, API keys, login credentials, and PII (Personally Identifiable 	Information) submitted in forms.

