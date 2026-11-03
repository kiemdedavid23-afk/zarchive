package ru.zdevs.zarchiver.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.PowerManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import p004b.C0015d;
import p011d0.C0063a;
import p011d0.C0071i;
import p020g0.C0129h;
import p033m0.C0181d;
import p043r0.AbstractC0245g;
import p043r0.C0240b;
import p043r0.C0241c;
import p043r0.C0242d;
import p043r0.C0243e;
import p043r0.C0244f;
import p043r0.C0246h;
import p043r0.C0247i;
import p055w0.C0412c;
import p059y0.C0441e;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.C2JBridge;

/* JADX INFO: loaded from: classes.dex */
public class ZArchiverService extends Service implements C2JBridge.InterfaceC0303a {

    /* JADX INFO: renamed from: f */
    public static int f1652f = 16777223;

    /* JADX INFO: renamed from: g */
    public static int f1653g = 866;

    /* JADX INFO: renamed from: b */
    public NotificationManager f1655b;

    /* JADX INFO: renamed from: a */
    public boolean f1654a = false;

    /* JADX INFO: renamed from: c */
    public final C0314a f1656c = new C0314a();

    /* JADX INFO: renamed from: d */
    public final Handler f1657d = new Handler(Looper.getMainLooper()) { // from class: ru.zdevs.zarchiver.service.ZArchiverService.1
        /* JADX WARN: Code duplicated, block: B:44:0x00a1 A[Catch: all -> 0x0101, TryCatch #0 {, blocks: (B:28:0x0068, B:32:0x0074, B:34:0x007a, B:36:0x0086, B:41:0x0091, B:42:0x0095, B:44:0x00a1, B:46:0x00bd, B:45:0x00a7), top: B:106:0x0068 }] */
        /* JADX WARN: Code duplicated, block: B:45:0x00a7 A[Catch: all -> 0x0101, TryCatch #0 {, blocks: (B:28:0x0068, B:32:0x0074, B:34:0x007a, B:36:0x0086, B:41:0x0091, B:42:0x0095, B:44:0x00a1, B:46:0x00bd, B:45:0x00a7), top: B:106:0x0068 }] */
        /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a7, please report this as an issue */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Intent intentM890h;
            int i2 = message.what;
            int i3 = message.arg1;
            if (i3 == 1) {
                int i4 = message.arg2;
                if (i4 == 1) {
                    ZArchiverService.m887b(ZArchiverService.this, i2, C0015d.f119f[i2], R.string.NTF_REQUEST_PASSWORD, 22);
                } else if (i4 == 2) {
                    ZArchiverService.m887b(ZArchiverService.this, i2, C0015d.f119f[i2], R.string.NTF_REQUEST_OVERWRITE, 23);
                }
                if (ZArchiverService.this.f1654a) {
                    int i5 = message.arg2;
                    if (i5 == 1) {
                        intentM890h = ZArchiverService.m890h(i2, 5);
                    } else if (i5 != 2) {
                        intentM890h = i5 != 3 ? null : ZArchiverService.m890h(i2, 1);
                    } else {
                        intentM890h = ZArchiverService.m890h(i2, 8);
                        intentM890h.putExtra("oData", C2JBridge.f1561j[i2]);
                    }
                    if (intentM890h != null) {
                        ZArchiverService.this.sendBroadcast(intentM890h);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i3 == 2) {
                int i6 = message.arg2;
                if (i6 == 0) {
                    ZArchiverService.m888c(ZArchiverService.this, i2);
                    ZArchiverService zArchiverService = ZArchiverService.this;
                    C0315b.m909f(zArchiverService.f1655b, zArchiverService, i2);
                } else if (i6 == 1 || i6 == 2) {
                    ZArchiverService.m888c(ZArchiverService.this, i2);
                } else if (i6 == 3) {
                    ZArchiverService zArchiverService2 = ZArchiverService.this;
                    C0315b.m909f(zArchiverService2.f1655b, zArchiverService2, i2);
                }
                if (ZArchiverService.this.f1654a) {
                    int i7 = message.arg2;
                    if (i7 == 0 || i7 == 3) {
                        Intent intentM890h2 = ZArchiverService.m890h(i2, 2);
                        intentM890h2.putExtra("iDialogType", message.arg2 != 3 ? -1 : 2);
                        ZArchiverService.this.sendBroadcast(intentM890h2);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i3 == 3) {
                if (ZArchiverService.this.f1654a) {
                    Intent intentM890h3 = ZArchiverService.m890h(i2, 3);
                    intentM890h3.putExtra("sText", (String) message.obj);
                    ZArchiverService.this.sendBroadcast(intentM890h3);
                    return;
                }
                return;
            }
            if (i3 != 4) {
                if (i3 == 15) {
                    String str = (String) message.obj;
                    ZArchiverService zArchiverService3 = ZArchiverService.this;
                    NotificationManager notificationManager = zArchiverService3.f1655b;
                    if (notificationManager != null) {
                        C0315b.m911h(notificationManager, i2, zArchiverService3.getString(((byte) (C0015d.f118e[i2] & 127)) == 11 ? R.string.NTF_TEST : R.string.NTF_EXTRACT).replace("%1", str));
                    }
                    if (ZArchiverService.this.f1654a) {
                        Intent intentM890h4 = ZArchiverService.m890h(i2, 15);
                        intentM890h4.putExtra("sText", str);
                        ZArchiverService.this.sendBroadcast(intentM890h4);
                        return;
                    }
                    return;
                }
                if (i3 != 22) {
                    return;
                }
            }
            ZArchiverService zArchiverService4 = ZArchiverService.this;
            int i8 = message.arg2;
            NotificationManager notificationManager2 = zArchiverService4.f1655b;
            if (notificationManager2 != null) {
                boolean z2 = C0315b.f1665f;
                synchronized (C0315b.class) {
                    C0315b c0315b = C0315b.f1667h.get(i2);
                    if (c0315b != null) {
                        int i9 = Build.VERSION.SDK_INT;
                        if (i9 >= 34) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (i8 - c0315b.f1670c >= 10 || jCurrentTimeMillis >= c0315b.f1671d + 500) {
                                c0315b.f1670c = i8;
                                c0315b.f1671d = jCurrentTimeMillis;
                                c0315b.f1672e.setProgress(100, i8, false);
                                if (i9 < 24) {
                                    c0315b.f1672e.setNumber(i8);
                                } else {
                                    c0315b.f1672e.setContentText(i8 + "%");
                                }
                                notificationManager2.notify(c0315b.f1668a, c0315b.m912b());
                            }
                        } else {
                            c0315b.f1672e.setProgress(100, i8, false);
                            if (i9 < 24) {
                                c0315b.f1672e.setNumber(i8);
                            } else {
                                c0315b.f1672e.setContentText(i8 + "%");
                            }
                            notificationManager2.notify(c0315b.f1668a, c0315b.m912b());
                        }
                    }
                }
            }
            if (ZArchiverService.this.f1654a) {
                Intent intentM890h5 = ZArchiverService.m890h(i2, message.arg1);
                intentM890h5.putExtra("iProgress", message.arg2);
                if (message.arg1 == 4) {
                    Object obj = message.obj;
                    intentM890h5.putExtra("iSpeed", obj != null ? ((Integer) obj).intValue() : -1);
                } else {
                    intentM890h5.putExtra("sText", (String) message.obj);
                }
                ZArchiverService.this.sendBroadcast(intentM890h5);
            }
        }
    };

    /* JADX INFO: renamed from: e */
    public final InterfaceC0316c.a f1658e = new InterfaceC0316c.a() { // from class: ru.zdevs.zarchiver.service.ZArchiverService.2
        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveAddFiles(String str, C0129h c0129h, String str2, String str3, C0129h c0129h2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0240b c0240b = new C0240b(zArchiverService, iM94v, 0);
            c0240b.m697s(c0129h);
            c0240b.m698t(i2, str2);
            ArrayList arrayList = new ArrayList(1);
            c0240b.f1332l = arrayList;
            arrayList.add(str3);
            ArrayList arrayList2 = new ArrayList(1);
            c0240b.f1333m = arrayList2;
            arrayList2.add(c0129h2);
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_ADD_FILES_TO_ARC).replace("%1", strArr[iM94v]));
            c0240b.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveAddFilesMulti(String str, C0129h c0129h, String str2, List<String> list, List<C0129h> list2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0240b c0240b = new C0240b(zArchiverService, iM94v, 0);
            c0240b.m697s(c0129h);
            c0240b.m698t(i2, str2);
            c0240b.f1332l = list;
            c0240b.f1333m = list2;
            if (list.size() > 1) {
                c0240b.m715r((byte) -121);
            }
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_ADD_FILES_TO_ARC).replace("%1", strArr[iM94v]));
            c0240b.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveCompress(String str, C0129h c0129h, String str2, List<String> list, C0129h c0129h2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0241c c0241c = new C0241c(zArchiverService, iM94v);
            ArrayList arrayList = new ArrayList(1);
            c0241c.f1334i = arrayList;
            arrayList.add(c0129h);
            c0241c.f1335j = list;
            c0241c.f1336k = c0129h2;
            c0241c.f1337l = str2;
            c0241c.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_COMPRESS).replace("%1", strArr[iM94v]));
            c0241c.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveCompressMulti(List<C0129h> list, String str, List<String> list2, C0129h c0129h, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            C0015d.f119f[iM94v] = list.get(0).m478e() + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0241c c0241c = new C0241c(zArchiverService, iM94v);
            c0241c.f1334i = list;
            if (list.size() > 1) {
                c0241c.m715r((byte) -125);
            }
            c0241c.f1335j = list2;
            c0241c.f1336k = c0129h;
            c0241c.f1337l = str;
            c0241c.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_COMPRESS).replace("%1", list.get(0).m478e() + " (1/" + list.size() + ")"));
            c0241c.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveCreateFile(String str, C0129h c0129h, String str2, String str3, boolean z2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0242d c0242d = new C0242d(zArchiverService, iM94v);
            c0242d.f1338i = c0129h;
            c0242d.f1339j = str3;
            c0242d.f1340k = z2;
            c0242d.f1341l = str2;
            c0242d.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_ADD_FILES_TO_ARC).replace("%1", strArr[iM94v]));
            c0242d.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveDelFiles(String str, C0129h c0129h, String str2, String str3, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0243e c0243e = new C0243e(zArchiverService, iM94v, 0);
            switch (c0243e.f1342i) {
                case 0:
                    c0243e.f1343j = c0129h;
                    break;
                default:
                    ArrayList arrayList = new ArrayList(1);
                    c0243e.f1343j = arrayList;
                    arrayList.add(c0129h);
                    break;
            }
            c0243e.f1344k = str3;
            c0243e.m699s(i2, str2);
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_DEL_FILES_FROM_ARC).replace("%1", strArr[iM94v]));
            c0243e.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveExtract(String str, C0129h c0129h, String str2, String str3, C0129h c0129h2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0244f c0244f = new C0244f(zArchiverService, iM94v);
            ArrayList arrayList = new ArrayList(1);
            c0244f.f1346i = arrayList;
            arrayList.add(c0129h);
            ArrayList arrayList2 = new ArrayList(1);
            c0244f.f1348k = arrayList2;
            arrayList2.add(str3);
            ArrayList arrayList3 = new ArrayList(1);
            c0244f.f1349l = arrayList3;
            arrayList3.add(c0129h2);
            ArrayList arrayList4 = new ArrayList(1);
            c0244f.f1347j = arrayList4;
            arrayList4.add(str2);
            c0244f.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_EXTRACT).replace("%1", strArr[iM94v]));
            c0244f.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveExtractMulti(List<String> list, List<C0129h> list2, List<String> list3, List<String> list4, List<C0129h> list5, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            C0015d.f119f[iM94v] = list.get(0) + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0244f c0244f = new C0244f(zArchiverService, iM94v);
            c0244f.f1346i = list2;
            if (list2.size() > 1) {
                c0244f.m715r((byte) -127);
            }
            c0244f.f1348k = list4;
            c0244f.f1349l = list5;
            c0244f.f1347j = list3;
            c0244f.f1354d = i2;
            c0244f.f1350m = list;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_EXTRACT).replace("%1", list.get(0) + " (1/" + list.size() + ")"));
            c0244f.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveOpenFile(String str, C0129h c0129h, String str2, String str3, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0244f c0244f = new C0244f(zArchiverService, iM94v);
            ArrayList arrayList = new ArrayList(1);
            c0244f.f1346i = arrayList;
            arrayList.add(c0129h);
            ArrayList arrayList2 = new ArrayList(1);
            c0244f.f1348k = arrayList2;
            arrayList2.add(str3);
            C0129h c0129h2 = new C0129h("file", C0181d.m566g());
            int i3 = i2 | 16;
            ArrayList arrayList3 = new ArrayList(1);
            c0244f.f1349l = arrayList3;
            arrayList3.add(c0129h2);
            ArrayList arrayList4 = new ArrayList(1);
            c0244f.f1347j = arrayList4;
            arrayList4.add(str2);
            c0244f.f1354d = i3;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_OPEN_FILE_FROM_ARCHIVE).replace("%1", strArr[iM94v]));
            c0244f.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveRenFile(String str, C0129h c0129h, String str2, String str3, String str4, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            C0015d.f119f[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0240b c0240b = new C0240b(zArchiverService, iM94v, 1);
            c0240b.m697s(c0129h);
            c0240b.f1331k = str3;
            c0240b.f1332l = str4;
            c0240b.m698t(i2, str2);
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_MOVE_FILE));
            c0240b.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveTest(String str, C0129h c0129h, String str2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0243e c0243e = new C0243e(zArchiverService, iM94v, 1);
            switch (c0243e.f1342i) {
                case 0:
                    c0243e.f1343j = c0129h;
                    break;
                default:
                    ArrayList arrayList = new ArrayList(1);
                    c0243e.f1343j = arrayList;
                    arrayList.add(c0129h);
                    break;
            }
            c0243e.m699s(0, str2);
            c0243e.start();
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_TEST).replace("%1", strArr[iM94v]));
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void ArchiveTestMulti(List<String> list, List<C0129h> list2, List<String> list3) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            C0015d.f119f[iM94v] = list.get(0) + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0243e c0243e = new C0243e(zArchiverService, iM94v, 1);
            c0243e.f1343j = list2;
            if (list2.size() > 1) {
                c0243e.m715r((byte) -117);
            }
            c0243e.f1344k = list3;
            c0243e.f1354d = 0;
            c0243e.f1345l = list;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_TEST).replace("%1", list.get(0) + " (1/" + list.size() + ")"));
            c0243e.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void Copy(C0129h c0129h, C0129h c0129h2, List<String> list, boolean z2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            C0015d.f119f[iM94v] = "";
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0246h c0246h = new C0246h(zArchiverService, z2, iM94v);
            c0246h.f1359i = c0129h;
            c0246h.f1360j = c0129h2;
            c0246h.f1361k = list;
            c0246h.f1362l = null;
            c0246h.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(z2 ? R.string.NTF_MOVE_FILE : R.string.NTF_COPY_FILE));
            c0246h.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void CopyList(List<C0129h> list, C0129h c0129h, boolean z2, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            C0015d.f119f[iM94v] = "";
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0246h c0246h = new C0246h(zArchiverService, z2, iM94v);
            c0246h.f1359i = null;
            c0246h.f1360j = c0129h;
            c0246h.f1361k = null;
            c0246h.f1362l = list;
            c0246h.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(z2 ? R.string.NTF_MOVE_FILE : R.string.NTF_COPY_FILE));
            c0246h.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void GUIStatus(boolean z2) {
            ZArchiverService zArchiverService = ZArchiverService.this;
            zArchiverService.f1654a = z2;
            if (z2) {
                return;
            }
            zArchiverService.m901r();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public int GetProgPercent(int i2) {
            if (i2 >= 5) {
                return 0;
            }
            return C2JBridge.f1559h[i2];
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public String GetProgText(int i2) {
            return i2 >= 5 ? "" : C2JBridge.f1558g[i2];
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public int GetStatusTask(int i2) {
            if (i2 >= 5) {
                return 1048576;
            }
            return C0015d.f117d[i2];
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void HideNotification(int i2) {
            ZArchiverService.m888c(ZArchiverService.this, i2);
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public boolean IsLock(C0129h c0129h, int i2) {
            C0314a c0314a = ZArchiverService.this.f1656c;
            c0314a.getClass();
            return c0314a.m904b(i2, -1, 0, C0314a.m902c(c0129h)) != null;
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void PluginOpenFile(C0129h c0129h, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = c0129h.m478e();
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0247i c0247i = new C0247i(zArchiverService, iM94v);
            c0247i.f1368i = c0129h;
            c0247i.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(R.string.NTF_OPEN_FILE_FROM_ARCHIVE).replace("%1", strArr[iM94v]));
            c0247i.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void Remove(C0129h c0129h, List<String> list, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String strM97y = list.size() > 1 ? C0015d.m97y(c0129h.f1015c) : C0015d.m97y(list.get(0));
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = strM97y;
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0243e c0243e = new C0243e(zArchiverService, iM94v, 2);
            c0243e.f1343j = c0129h;
            c0243e.f1344k = list;
            c0243e.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(list.size() > 1 ? R.string.NTF_REMOVE_FILES : R.string.NTF_REMOVE_FILE).replace("%1", strArr[iM94v]));
            c0243e.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void RemoveList(List<C0129h> list, int i2) {
            int iM94v = C0015d.m94v();
            if (iM94v < 0) {
                return;
            }
            String[] strArr = C0015d.f119f;
            strArr[iM94v] = list.get(0).m478e() + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            C0243e c0243e = new C0243e(zArchiverService, iM94v, 2);
            c0243e.f1343j = null;
            c0243e.f1345l = list;
            c0243e.f1354d = i2;
            ZArchiverService.m889f(zArchiverService, iM94v, zArchiverService.getString(list.size() > 1 ? R.string.NTF_REMOVE_FILES : R.string.NTF_REMOVE_FILE).replace("%1", strArr[iM94v]));
            c0243e.start();
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void SetOverwrite(int i2, int i3) {
            C2JBridge.m800a(i2, i3);
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void SetPassword(int i2, String str) {
            C2JBridge.m801b(i2, str);
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void SetSettings(int i2, int i3, String str) {
            C0412c.m1122p(null);
            ZArchiverService.f1652f = i2;
            ZArchiverService.f1653g = i3;
            C0441e.m1184i(ZApp.f1375c, str);
        }

        @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
        public void SetStatusTask(int i2, int i3) {
            C0015d.m77h0(ZArchiverService.this, i2, i3);
        }
    };

    /* JADX INFO: renamed from: b */
    public static void m887b(ZArchiverService zArchiverService, int i2, String str, int i3, int i4) {
        Notification.Builder builder;
        zArchiverService.getClass();
        Intent intent = new Intent(zArchiverService, (Class<?>) ZArchiver.class);
        intent.setFlags(537919488);
        intent.putExtra("ZArchiver.iCMD", i4);
        intent.putExtra("iTaskID", i2);
        intent.putExtra("iTaskType", (int) C0015d.f118e[i2]);
        if (i4 == 23) {
            intent.putExtra("iData", C2JBridge.f1561j[i2]);
        }
        if (zArchiverService.f1655b == null) {
            return;
        }
        C0315b c0315bM906c = C0315b.m906c(zArchiverService, i2, str, zArchiverService.getString(i3), intent);
        if (!zArchiverService.m893j() && (builder = c0315bM906c.f1672e) != null) {
            builder.setLights(-256, 300, 3000);
        }
        c0315bM906c.m913i(zArchiverService.f1655b);
    }

    /* JADX INFO: renamed from: c */
    public static void m888c(ZArchiverService zArchiverService, int i2) {
        NotificationManager notificationManager = zArchiverService.f1655b;
        boolean z2 = C0315b.f1665f;
        synchronized (C0315b.class) {
            if (notificationManager != null) {
                notificationManager.cancel(i2 + 70);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m889f(ZArchiverService zArchiverService, int i2, String str) {
        zArchiverService.getClass();
        Intent intent = new Intent(zArchiverService, (Class<?>) ZArchiver.class);
        intent.setFlags(537919488);
        intent.putExtra("ZArchiver.iCMD", 21);
        intent.putExtra("iTaskID", i2);
        intent.putExtra("iTaskType", (int) C0015d.f118e[i2]);
        if (zArchiverService.f1655b == null) {
            return;
        }
        C0315b.m908e(zArchiverService, i2, str, intent).m913i(zArchiverService.f1655b);
    }

    /* JADX INFO: renamed from: h */
    public static Intent m890h(int i2, int i3) {
        Intent intent = new Intent("ZArchiver.iMES");
        intent.putExtra("iTaskID", i2);
        intent.putExtra("iTaskType", (int) C0015d.f118e[i2]);
        intent.putExtra("iAction", i3);
        intent.setPackage("ru.zdevs.zarchiver");
        return intent;
    }

    /* JADX INFO: renamed from: i */
    public static boolean m891i(int i2) {
        return C0015d.m49K(f1652f, i2);
    }

    @Override // ru.zdevs.zarchiver.archiver.C2JBridge.InterfaceC0303a
    /* JADX INFO: renamed from: a */
    public final synchronized void mo753a(int i2, String str) {
        this.f1657d.obtainMessage(i2, 3, 0, str).sendToTarget();
    }

    @Override // ru.zdevs.zarchiver.archiver.C2JBridge.InterfaceC0303a
    /* JADX INFO: renamed from: d */
    public final synchronized void mo754d(int i2, int i3) {
        this.f1657d.obtainMessage(i2, 4, i3).sendToTarget();
    }

    @Override // ru.zdevs.zarchiver.archiver.C2JBridge.InterfaceC0303a
    /* JADX INFO: renamed from: e */
    public final synchronized void mo755e(int i2, int i3, String str) {
        if (this.f1654a && m893j()) {
            String strM235e = C0063a.m235e(i3, str);
            Intent intentM890h = m890h(i2, 18);
            intentM890h.putExtra("sText", strM235e);
            intentM890h.putExtra("iType", 1);
            sendBroadcast(intentM890h);
        }
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m892g(int i2, int i3) {
        this.f1657d.removeMessages(i2);
        this.f1657d.obtainMessage(i2, 2, i3).sendToTarget();
    }

    /* JADX INFO: renamed from: j */
    public final boolean m893j() {
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (powerManager == null) {
            return true;
        }
        try {
            return powerManager.isInteractive();
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: renamed from: k */
    public final synchronized void m894k(int i2, C0129h c0129h, int i3) {
        String str = C0015d.f119f[i2];
        Intent intentM890h = m890h(i2, 0);
        intentM890h.putExtra("iAction", 19);
        intentM890h.putExtra("sFilePath", C0181d.m566g() + "/" + str);
        if (c0129h != null) {
            intentM890h.putExtra("oPath", c0129h);
        }
        intentM890h.putExtra("iFlags", i3);
        sendBroadcast(intentM890h);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00db A[Catch: all -> 0x014b, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:78:0x0114 A[Catch: all -> 0x014b, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x012c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130  */
    /* JADX WARN: Code duplicated, block: B:84:0x0132 A[Catch: all -> 0x014b, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x013c  */
    /* JADX WARN: Code duplicated, block: B:87:0x013d A[Catch: all -> 0x014b, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX INFO: renamed from: l */
    public final synchronized void m895l(AbstractC0245g abstractC0245g, boolean z2, ArrayList<C0063a.b> arrayList, ArrayList<C0071i> arrayList2) {
        int i2;
        String string;
        Parcelable[] parcelableArr;
        Intent intentM890h;
        boolean z3 = true;
        boolean z4 = this.f1654a && m893j();
        Parcelable[] parcelableArr2 = null;
        if (!abstractC0245g.isCancelled()) {
            int i3 = abstractC0245g.f1353c;
            byte[] bArr = C0015d.f118e;
            byte b2 = (byte) (bArr[i3] & 127);
            if (arrayList != null && arrayList.size() == 1 && arrayList.get(0).f452c.size() == 1 && arrayList.get(0).f453d < 2 && (b2 == 3 || b2 == 7 || b2 == 8 || b2 == 5)) {
                C0063a.a aVar = arrayList.get(0).f452c.get(0);
                string = C0063a.m235e(aVar.f448a, aVar.f449b);
            } else {
                if (z2) {
                    if (b2 == 1) {
                        i2 = R.string.MES_SUCESSFUL_DECOMPRESS;
                    } else if (b2 == 14) {
                        i2 = R.string.MES_INSTALL_APP_DONE;
                    } else if (b2 == 3) {
                        i2 = R.string.MES_SUCESSFUL_COMPRESS;
                    } else if (b2 == 4 || b2 == 6) {
                        if (z4) {
                            i2 = 0;
                        } else {
                            i2 = R.string.MES_SUCESSFUL_END;
                        }
                    } else if (b2 == 7) {
                        i2 = R.string.MES_SUCESSFUL_ADD_FILE;
                    } else if (b2 != 8) {
                        if (b2 != 10) {
                            if (b2 != 11) {
                                i2 = 0;
                            } else {
                                if ((bArr[abstractC0245g.f1353c] & (-128)) != -128) {
                                    z3 = false;
                                }
                                i2 = z3 ? R.string.MES_SUCESSFUL_TESTS : R.string.MES_SUCESSFUL_TEST;
                            }
                        } else if (z4) {
                            i2 = 0;
                        } else {
                            i2 = R.string.MES_SUCESSFUL_END;
                        }
                    } else if (z4) {
                        i2 = 0;
                    } else {
                        i2 = R.string.MES_SUCESSFUL_DEL_FILE;
                    }
                } else if (arrayList == null || !z4) {
                    i2 = R.string.MES_END_WITH_ERROR;
                } else {
                    i2 = 0;
                }
                string = i2 == 0 ? null : getString(i2);
            }
            if (string != null && arrayList == null && arrayList2 == null) {
                return;
            }
            if (z4) {
                if (arrayList != null) {
                    intentM890h = m890h(abstractC0245g.f1353c, 21);
                    intentM890h.putExtra("oErrorData", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
                } else if (arrayList2 != null || arrayList2.size() <= 0) {
                    intentM890h = m890h(abstractC0245g.f1353c, 18);
                    intentM890h.putExtra("sText", string);
                    intentM890h.putExtra("iType", 2);
                } else {
                    intentM890h = m890h(abstractC0245g.f1353c, 24);
                    intentM890h.putExtra("sText", string);
                    intentM890h.putExtra("oData", (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                }
                sendBroadcast(intentM890h);
            } else {
                if (string == null) {
                    string = "";
                }
                if (arrayList == null) {
                    parcelableArr = null;
                } else {
                    parcelableArr = (Parcelable[]) arrayList.toArray(new Parcelable[0]);
                }
                if (arrayList2 == null) {
                    parcelableArr2 = (Parcelable[]) arrayList2.toArray(new Parcelable[0]);
                }
                m900q(abstractC0245g, string, parcelableArr, parcelableArr2);
            }
        }
        string = getString(R.string.MES_CANCEL_PROCES);
        arrayList = null;
        if (string != null) {
        }
        if (z4) {
            if (arrayList != null) {
                intentM890h = m890h(abstractC0245g.f1353c, 21);
                intentM890h.putExtra("oErrorData", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
            } else if (arrayList2 != null) {
                intentM890h = m890h(abstractC0245g.f1353c, 18);
                intentM890h.putExtra("sText", string);
                intentM890h.putExtra("iType", 2);
            } else {
                intentM890h = m890h(abstractC0245g.f1353c, 18);
                intentM890h.putExtra("sText", string);
                intentM890h.putExtra("iType", 2);
            }
            sendBroadcast(intentM890h);
        } else {
            if (string == null) {
                string = "";
            }
            if (arrayList == null) {
                parcelableArr = null;
            } else {
                parcelableArr = (Parcelable[]) arrayList.toArray(new Parcelable[0]);
            }
            if (arrayList2 == null) {
                parcelableArr2 = (Parcelable[]) arrayList2.toArray(new Parcelable[0]);
            }
            m900q(abstractC0245g, string, parcelableArr, parcelableArr2);
        }
    }

    /* JADX INFO: renamed from: m */
    public final synchronized void m896m(int i2, int i3, C0129h c0129h) {
        if (this.f1654a) {
            Intent intentM890h = m890h(i2, 0);
            intentM890h.putExtra("iAction", 6);
            intentM890h.putExtra("iType", i3);
            intentM890h.putExtra("oPath", c0129h);
            sendBroadcast(intentM890h);
        }
    }

    /* JADX INFO: renamed from: n */
    public final synchronized void m897n(int i2, int i3) {
        this.f1657d.obtainMessage(i2, 1, i3).sendToTarget();
    }

    /* JADX INFO: renamed from: o */
    public final synchronized void m898o(int i2, String str) {
        this.f1657d.obtainMessage(i2, 15, 0, str).sendToTarget();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f1658e;
    }

    @Override // android.app.Service
    public final void onCreate() {
        for (int i2 = 0; i2 < 5; i2++) {
            C0015d.f117d[i2] = 1048576;
            C0015d.f118e[i2] = 0;
            C0015d.f119f[i2] = "";
        }
        this.f1655b = (NotificationManager) getSystemService("notification");
        C2JBridge.f1552a = this;
        C2JBridge.f1553b = this;
        ZApp.m719b(this);
        C0412c.m1109c(this);
        C2JBridge.m802c(this);
        C0315b.m905a(this);
        Log.d("ZArchiverService", "Service started");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f1657d.removeCallbacksAndMessages(null);
        C2JBridge.f1552a = null;
        C2JBridge.f1553b = null;
        C0315b.m910g(this.f1655b);
        this.f1655b = null;
        Log.d("ZArchiverService", "Service stopped");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        Bundle extras;
        if (C0015d.m49K(i2, 1) || intent == null) {
            Log.w("ZArchiverService", "Service restart...");
            m901r();
        } else if ("ru.zdevs.zarchiver.service.cancel_task".equals(intent.getAction()) && (extras = intent.getExtras()) != null) {
            int i4 = extras.getInt("iTaskID");
            if (C0015d.m48J(i4)) {
                C0015d.m77h0(this, i4, 15);
            } else {
                C0315b.m909f(this.f1655b, this, i4);
            }
        }
        return 1;
    }

    @Override // android.app.Service
    public final void onTaskRemoved(Intent intent) {
        m901r();
    }

    /* JADX INFO: renamed from: p */
    public final synchronized void m899p(int i2, int i3, String str) {
        this.f1657d.obtainMessage(i2, 22, i3, str).sendToTarget();
    }

    /* JADX INFO: renamed from: q */
    public final void m900q(AbstractC0245g abstractC0245g, String str, Parcelable[] parcelableArr, Parcelable[] parcelableArr2) {
        Notification.Builder builder;
        Intent intent = new Intent(this, (Class<?>) ZArchiver.class);
        intent.setFlags(537919488);
        byte[] bArr = C0015d.f118e;
        if (parcelableArr != null) {
            intent.putExtra("ZArchiver.iCMD", 24);
            intent.putExtra("iTaskType", (int) bArr[abstractC0245g.f1353c]);
            intent.putExtra("iErrorData", parcelableArr);
        } else if (parcelableArr2 != null) {
            intent.putExtra("ZArchiver.iCMD", 25);
            intent.putExtra("iTaskType", (int) bArr[abstractC0245g.f1353c]);
            intent.putExtra("iData", parcelableArr2);
        }
        if (this.f1655b == null) {
            return;
        }
        int i2 = abstractC0245g.f1353c;
        C0315b c0315bM907d = C0315b.m907d(this, i2, C0015d.f119f[i2], str, (int) ((System.currentTimeMillis() - abstractC0245g.f1357g) / 1000), intent);
        if (!m893j() && (builder = c0315bM907d.f1672e) != null) {
            builder.setLights(-16711681, 300, 3000);
        }
        c0315bM907d.m913i(this.f1655b);
    }

    /* JADX INFO: renamed from: r */
    public final void m901r() {
        boolean z2;
        synchronized (C0015d.f117d) {
            z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    break;
                }
                if (!C0015d.m49K(C0015d.f117d[i2], 1048576)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
        }
        if (z2 || this.f1654a) {
            return;
        }
        Log.w("ZArchiverService", "Stop service...");
        C0315b.m910g(this.f1655b);
        stopSelf();
    }
}
