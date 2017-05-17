# Percona xtrabackup tools

## Installation

Clone repository (in both servers):
```bash
git clone https://github.com/alexmanno/xtrabackup-tools
```

## Backup phase

Run:
```bash
sudo ~/xtrabackup-tools/percona_backup.sh
```

## Restore phase

**Warning:** During the restore phase, the mysql service is disabled and the current data is deleted.   

Run:
```bash
sudo ~/xtrabackup-tools/percona_restore.sh
```

