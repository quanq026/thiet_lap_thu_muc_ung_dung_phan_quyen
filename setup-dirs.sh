#!/bin/bash
set -e

echo "=== Tao thu muc ung dung user-service ==="
mkdir -p /opt/quickbite/user-service

echo "=== Phan quyen so huu cho user:group quickbite ==="
chown -R quickbite:quickbite /opt/quickbite

echo "=== Thiet lap permission 750 (Least Privilege) ==="
chmod 750 /opt/quickbite

# Giai thich y nghia quyen 750:
# - User (7 = rwx): quickbite co toan quyen doc, ghi va thuc thi (chay file jar, ghi logs).
# - Group (5 = r-x): cac tien trinh/thanh vien thuoc nhom chi co quyen doc va truy cap/thuc thi, khong co quyen ghi/sua.
# - Others (0 = ---): nguoi dung khac tren OS hoan toan khong co quyen truy cap, xem file hoac doc bien moi truong/secret.

echo "=== Kiem tra phan quyen thu muc /opt/quickbite ==="
ls -la /opt | grep quickbite
