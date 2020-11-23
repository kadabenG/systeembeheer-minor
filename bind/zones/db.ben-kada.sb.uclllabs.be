;
; BIND data file for local loopback interface
;
$TTL	86400
$ORIGIN ben-kada.sb.uclllabs.be.
@	IN	SOA	ns.ben-kada.sb.uclllabs.be. root.ben-kada.sb.uclllabs.be. (
			      9		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL

;name servers - NS records
@	IN	NS	ns.ben-kada.sb.uclllabs.be.
@	IN	NS	ns1.uclllabs.be.
@	IN	NS	ns2.uclllabs.be.

;records

@              IN      A       193.191.177.138
ns             IN      A       193.191.177.138
www            IN      A       193.191.177.138
www1           IN      A       193.191.177.138
www2           IN      A       193.191.177.138

test           IN      A       193.191.177.254
