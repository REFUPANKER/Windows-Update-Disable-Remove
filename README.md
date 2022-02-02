# Windows-Update-Disable-Remove
CMD script for disable/remove windows update 
---
##### Requirements
- Start CMD as Admin <br>
---
##### _Windows update - Service name : wuauserv_
---
### Disable Windows Update 
```bash
sc config wuauserv start=disabled
```
---
### Delete Update
```bash
sc delete wuauserv
```
---
### Check state of Update
```bash
sc query wuauserv
```
---
