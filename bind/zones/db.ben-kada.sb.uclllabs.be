;
; BIND data file for local loopback interface
;
$TTL    86400
$ORIGIN ben-kada.sb.uclllabs.be.
@       IN      SOA    ns.ben-kada.sb.uclllabs.be. root.ben-kada.sb.uclllabs.be. (
                     2003080807         ; Serial
                            300       ; Refresh
                            300         ; Retry
                            300          ; Expire
                            300 )       ; Negative Cache TTL

;name servers - NS records
@       IN      NS      ns.ben-kada.sb.uclllabs.be.
@       IN      NS      ns1.uclllabs.be.
@       IN      NS      ns2.uclllabs.be.

;records

@              IN      A       193.191.177.138
ns             IN      A       193.191.177.138
www            IN      A       193.191.177.138
www1           IN      A       193.191.177.138
www2           IN      A       193.191.177.138
secure         IN      A       193.191.177.138
supersecure    IN      A       193.191.177.138
@              IN      CAA     0 issue "letsencrypt.org"

@		IN	AAAA	2001:6a8:2880:a077::8a
ns		IN	AAAA	2001:6a8:2880:a077::8a

@	       IN	MX     10  mx.ben-kada.sb.uclllabs.be.
MX 		IN	 A	193.191.177.138

test           IN      A       193.191.177.254

