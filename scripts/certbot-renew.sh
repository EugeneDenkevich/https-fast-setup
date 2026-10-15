#!/bin/sh

RENEWAL_DIR=/etc/letsencrypt/renewal
RENEW_INTERVAL=43200
INITIAL_CERT_CHECK_INTERVAL=300

has_renewal_config() {
  for config in "$RENEWAL_DIR"/*.conf; do
    if [ -f "$config" ]; then
      return 0
    fi
  done

  return 1
}

while ! has_renewal_config; do
  echo "No Certbot renewal configuration found; checking again in ${INITIAL_CERT_CHECK_INTERVAL}s."
  sleep "$INITIAL_CERT_CHECK_INTERVAL"
done

while :; do
  echo "Checking for certificates due for renewal."

  if certbot renew --deploy-hook 'kill -HUP 1'; then
    echo "Certbot renewal check completed."
  else
    status=$?
    echo "Certbot renewal check failed with exit code ${status}; retrying in 12 hours." >&2
  fi

  sleep "$RENEW_INTERVAL"
done
