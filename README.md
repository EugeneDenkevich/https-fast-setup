# HTTPS Fast Config
Help you to configure 

### STEPS:
1. Replace domain:
`task set-domain -- your-favorite-domain.app`

2. Switch to http for cert generation:
`task switch-http`

3. Start:
`task d && task r`

4. Check nginx logs:
`task l -- nginx`

5. Test cert generation:
`task test-cert`

6. Run cert generation:
`task cert`

7. Switch https back:
`task switch-https`

8. Restart:
`task d && task r`

9. Get cert info:
`task cert-info`

10. Check certificate renewal (dry run):
`task test-renew`

11. Renew cert manually:
`task renew-cert`

#### © Eugene Denkevich, 2026.
