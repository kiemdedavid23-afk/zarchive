package ru.zdevs.zarchiver;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.storage.StorageVolume;
import android.preference.PreferenceManager;
import android.util.SparseArray;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import java.io.File;
import java.io.FileReader;
import java.io.LineNumberReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p004b.C0015d;
import p005b0.C0023e;
import p008c0.AbstractViewOnClickListenerC0050h;
import p008c0.C0045c;
import p008c0.C0046d;
import p008c0.C0048f;
import p011d0.C0063a;
import p011d0.C0065c;
import p011d0.C0070h;
import p011d0.C0071i;
import p014e0.C0079a;
import p014e0.InterfaceC0082d;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0088a;
import p017f0.DialogInterfaceOnCancelListenerC0089a0;
import p017f0.DialogInterfaceOnCancelListenerC0090b;
import p017f0.DialogInterfaceOnCancelListenerC0098h;
import p017f0.DialogInterfaceOnCancelListenerC0101k;
import p017f0.DialogInterfaceOnCancelListenerC0103m;
import p017f0.DialogInterfaceOnCancelListenerC0105o;
import p017f0.DialogInterfaceOnCancelListenerC0106p;
import p017f0.DialogInterfaceOnCancelListenerC0112v;
import p017f0.DialogInterfaceOnCancelListenerC0113w;
import p017f0.DialogInterfaceOnCancelListenerC0115y;
import p017f0.DialogInterfaceOnClickListenerC0091b0;
import p017f0.DialogInterfaceOnClickListenerC0104n;
import p017f0.DialogInterfaceOnClickListenerC0109s;
import p017f0.DialogInterfaceOnClickListenerC0114x;
import p017f0.ViewOnClickListenerC0092c;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p021g1.C0134e;
import p021g1.InterfaceC0139j;
import p033m0.C0180c;
import p033m0.C0181d;
import p047s0.C0357a;
import p047s0.C0358b;
import p051u0.C0382e;
import p051u0.C0383f;
import p051u0.C0385h;
import p055w0.C0410a;
import p055w0.C0412c;
import p055w0.C0415f;
import p060z.C0449a;
import p060z.C0462e0;
import p060z.C0472j0;
import p060z.C0474k0;
import p060z.C0476l0;
import p060z.C0483p;
import p060z.C0486q0;
import p060z.C0492t0;
import p060z.C0494u0;
import p060z.C0497w;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.p044io.ZAIO;
import ru.zdevs.zarchiver.p045ui.FSSelect;
import ru.zdevs.zarchiver.service.InterfaceC0316c;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0287a extends C0412c.b implements AbstractC0099i.c, AbstractC0099i.b {

    /* JADX INFO: renamed from: b */
    public final C0307d f1490b;

    /* JADX INFO: renamed from: f */
    public InterfaceC0139j f1494f;

    /* JADX INFO: renamed from: c */
    public ZArchiver f1491c = null;

    /* JADX INFO: renamed from: d */
    public C0449a f1492d = null;

    /* JADX INFO: renamed from: e */
    public C0449a f1493e = null;

    /* JADX INFO: renamed from: g */
    public final C0306c f1495g = new C0306c();

    /* JADX INFO: renamed from: h */
    public final a f1496h = new a();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.a$a */
    public class a extends BroadcastReceiver {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:69:0x013c  */
        /* JADX WARN: Code duplicated, block: B:70:0x0140  */
        /* JADX WARN: Code duplicated, block: B:71:0x0144  */
        @Override // android.content.BroadcastReceiver
        public final synchronized void onReceive(Context context, Intent intent) {
            DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a0;
            int i2;
            if (C0287a.this.f1491c != null && intent != null && intent.getExtras() != null) {
                Bundle extras = intent.getExtras();
                int i3 = extras.getInt("iTaskID");
                int i4 = extras.getInt("iTaskType");
                int i5 = extras.getInt("iAction");
                if (i5 != 8) {
                    int i6 = 0;
                    if (i5 != 15) {
                        switch (i5) {
                            case 1:
                                if (C0287a.this.f1490b.m841b(i3, 2, -1) == null) {
                                    if (i4 == -127) {
                                        i2 = R.string.MES_DECOMPRESS_FILE_PROCESS;
                                    } else if (i4 == -121) {
                                        i2 = R.string.MES_ADD_TO_ARCHIVE;
                                    } else if (i4 == -117) {
                                        i2 = R.string.MES_TEST_FILE_PROCESS;
                                    } else if (i4 != 1) {
                                        switch (i4) {
                                            case 4:
                                            case 13:
                                                i2 = R.string.MES_COPY_FILE;
                                                break;
                                            case 5:
                                                i2 = R.string.MES_DECOMPRESS_FILE_PROCESS;
                                                break;
                                            case 6:
                                                i2 = R.string.MES_REMOVE_FILE;
                                                break;
                                            case 7:
                                            case 12:
                                                i2 = R.string.MES_ADD_TO_ARCHIVE;
                                                break;
                                            case 8:
                                                i2 = R.string.MES_DEL_FROM_ARCHIVE;
                                                break;
                                            case 9:
                                                i2 = R.string.MES_RENAME_FILE_PROCESS;
                                                break;
                                            case 10:
                                                i2 = R.string.MES_MOVE_FILE;
                                                break;
                                            case 11:
                                                i2 = R.string.MES_TEST_FILE_PROCESS;
                                                break;
                                            default:
                                                i2 = R.string.MES_COMPRESS_FILE_PROCESS;
                                                break;
                                        }
                                    } else {
                                        i2 = R.string.MES_DECOMPRESS_FILE_PROCESS;
                                    }
                                    C0287a c0287a = C0287a.this;
                                    DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a1 = new DialogInterfaceOnCancelListenerC0089a0(c0287a.f1490b, c0287a.f1491c, i2);
                                    dialogInterfaceOnCancelListenerC0089a1.f739c = i3;
                                    C0287a c0287a2 = C0287a.this;
                                    dialogInterfaceOnCancelListenerC0089a1.f738b = c0287a2;
                                    dialogInterfaceOnCancelListenerC0089a1.f737a = c0287a2;
                                    AlertDialog alertDialog = dialogInterfaceOnCancelListenerC0089a1.f689g;
                                    if (alertDialog != null && AbstractC0099i.m354q(alertDialog)) {
                                        Button button = dialogInterfaceOnCancelListenerC0089a1.f689g.getButton(-2);
                                        button.setTag(-2);
                                        button.setOnClickListener(dialogInterfaceOnCancelListenerC0089a1);
                                        Button button2 = dialogInterfaceOnCancelListenerC0089a1.f689g.getButton(-1);
                                        button2.setTag(-1);
                                        button2.setOnClickListener(dialogInterfaceOnCancelListenerC0089a1);
                                    }
                                }
                                break;
                            case 2:
                                C0287a.this.f1490b.m840a(i3, extras.getInt("iDialogType", 2), false);
                                break;
                            case 3:
                                DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a2 = (DialogInterfaceOnCancelListenerC0089a0) C0287a.this.f1490b.m841b(i3, 2, -1);
                                if (dialogInterfaceOnCancelListenerC0089a2 != null) {
                                    String string = extras.getString("sText");
                                    if (dialogInterfaceOnCancelListenerC0089a2.f689g != null) {
                                        dialogInterfaceOnCancelListenerC0089a2.f692j.setText(string);
                                    }
                                }
                                break;
                            case 4:
                                DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a3 = (DialogInterfaceOnCancelListenerC0089a0) C0287a.this.f1490b.m841b(i3, 2, -1);
                                if (dialogInterfaceOnCancelListenerC0089a3 != null) {
                                    dialogInterfaceOnCancelListenerC0089a3.m340r(extras.getInt("iProgress", 0), extras.getInt("iSpeed", -1));
                                }
                                break;
                            case 5:
                                if (((DialogInterfaceOnCancelListenerC0101k) C0287a.this.f1490b.m841b(i3, 12, -1)) == null) {
                                    C0287a c0287a3 = C0287a.this;
                                    DialogInterfaceOnCancelListenerC0101k dialogInterfaceOnCancelListenerC0101k = new DialogInterfaceOnCancelListenerC0101k(c0287a3.f1490b, c0287a3.f1491c);
                                    dialogInterfaceOnCancelListenerC0101k.f739c = i3;
                                    C0287a c0287a4 = C0287a.this;
                                    dialogInterfaceOnCancelListenerC0101k.f738b = c0287a4;
                                    dialogInterfaceOnCancelListenerC0101k.f737a = c0287a4;
                                    AlertDialog alertDialog2 = dialogInterfaceOnCancelListenerC0101k.f748g;
                                    if (alertDialog2 != null) {
                                        AbstractC0099i.m354q(alertDialog2);
                                    }
                                }
                                break;
                            case 6:
                                int i7 = extras.getInt("iType");
                                C0129h c0129h = (C0129h) extras.getParcelable("oPath");
                                int i8 = C0358b.m1041l(128) ? 2 : 1;
                                for (int i9 = 0; i9 < i8; i9++) {
                                    C0305b c0305b = C0287a.this.f1490b.f1627f[i9];
                                    if (c0305b != null && (c0129h == null || c0129h.compareTo(c0305b.f1594c) == 0)) {
                                        if (!c0305b.m828i()) {
                                            C0287a.this.f1491c.m750T(i9, true, true, false);
                                        } else if (C0015d.m49K(i7, 2)) {
                                            c0305b.f1597f |= 2;
                                        }
                                    }
                                }
                                C0287a.this.f1491c.m748R(4);
                                break;
                            default:
                                switch (i5) {
                                    case 18:
                                        if (extras.getInt("iType") != 2) {
                                            ZApp.m726j(extras.getString("sText"));
                                        } else {
                                            ZApp.m726j(extras.getString("sText"));
                                            ZArchiver zArchiver = C0287a.this.f1491c;
                                            if (zArchiver != null) {
                                                zArchiver.m732B(true);
                                            }
                                        }
                                        break;
                                    case 19:
                                        int i10 = extras.getInt("iFlags", 0);
                                        String string2 = extras.getString("sFilePath");
                                        if (string2 != null) {
                                            C0129h c0129h2 = (C0129h) intent.getParcelableExtra("oPath");
                                            if (c0129h2 == null) {
                                                c0129h2 = new C0129h("file", string2);
                                            }
                                            C0462e0 c0462e0 = new C0462e0(1, string2);
                                            ZArchiver zArchiver2 = C0287a.this.f1491c;
                                            c0462e0.m1098g(zArchiver2, zArchiver2.f4c);
                                            if ((i10 & 128) != 0) {
                                                C0287a.m782d(C0287a.this.f1491c, c0129h2, null, null);
                                            } else {
                                                C0287a c0287a5 = C0287a.this;
                                                C0287a.m783j(c0287a5.f1491c, c0129h2, 0L, false, i10 & 8, c0287a5.f1490b.m842c().f1599h, (byte) 1);
                                            }
                                            ZApp zApp = ZApp.f1375c;
                                            if (zApp != null) {
                                                zApp.m727h();
                                            }
                                        }
                                        break;
                                    case 20:
                                        String string3 = extras.getString("sFilePath");
                                        if (string3 != null) {
                                            C0462e0 c0462e1 = new C0462e0(0, string3);
                                            ZArchiver zArchiver3 = C0287a.this.f1491c;
                                            c0462e1.m1098g(zArchiver3, zArchiver3.f4c);
                                        }
                                        break;
                                    case 21:
                                        Parcelable[] parcelableArray = extras.getParcelableArray("oErrorData");
                                        if (parcelableArray != null) {
                                            C0063a.b[] bVarArr = new C0063a.b[parcelableArray.length];
                                            while (i6 < parcelableArray.length) {
                                                bVarArr[i6] = (C0063a.b) parcelableArray[i6];
                                                i6++;
                                            }
                                            C0287a c0287a6 = C0287a.this;
                                            AlertDialog alertDialog3 = new DialogInterfaceOnClickListenerC0104n(c0287a6.f1490b, c0287a6.f1491c, bVarArr).f755g;
                                            if (alertDialog3 != null) {
                                                AbstractC0099i.m354q(alertDialog3);
                                            }
                                        }
                                        break;
                                    case 22:
                                        DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a4 = (DialogInterfaceOnCancelListenerC0089a0) C0287a.this.f1490b.m841b(i3, 2, -1);
                                        if (dialogInterfaceOnCancelListenerC0089a4 != null) {
                                            dialogInterfaceOnCancelListenerC0089a4.m340r(extras.getInt("iProgress", 0), -1);
                                            String string4 = extras.getString("sText");
                                            if (dialogInterfaceOnCancelListenerC0089a4.f689g != null) {
                                                dialogInterfaceOnCancelListenerC0089a4.f692j.setText(string4);
                                            }
                                        }
                                        break;
                                    case 23:
                                        C0287a.m782d(C0287a.this.f1491c, (C0129h) extras.getParcelable("sFilePath"), (C0129h) extras.getParcelable("oPath"), null);
                                        break;
                                    case 24:
                                        Parcelable[] parcelableArray2 = extras.getParcelableArray("oData");
                                        if (parcelableArray2 != null) {
                                            C0071i[] c0071iArr = new C0071i[parcelableArray2.length];
                                            while (i6 < parcelableArray2.length) {
                                                c0071iArr[i6] = (C0071i) parcelableArray2[i6];
                                                i6++;
                                            }
                                            C0287a c0287a7 = C0287a.this;
                                            AlertDialog alertDialog4 = new DialogInterfaceOnClickListenerC0104n(c0287a7.f1490b, c0287a7.f1491c, c0071iArr).f755g;
                                            if (alertDialog4 != null) {
                                                AbstractC0099i.m354q(alertDialog4);
                                            }
                                        }
                                        break;
                                }
                                break;
                        }
                    } else if ((i4 & (-128)) == -128 && (dialogInterfaceOnCancelListenerC0089a0 = (DialogInterfaceOnCancelListenerC0089a0) C0287a.this.f1490b.m841b(i3, 2, -1)) != null) {
                        String string5 = extras.getString("sText");
                        if (dialogInterfaceOnCancelListenerC0089a0.f689g != null) {
                            if (dialogInterfaceOnCancelListenerC0089a0.f693k.getVisibility() == 8) {
                                dialogInterfaceOnCancelListenerC0089a0.f693k.setVisibility(0);
                            }
                            dialogInterfaceOnCancelListenerC0089a0.f693k.setText(string5);
                        }
                    }
                } else {
                    C0065c c0065c = (C0065c) intent.getParcelableExtra("oData");
                    if (c0065c != null && ((ViewOnClickListenerC0092c) C0287a.this.f1490b.m841b(i3, 9, -1)) == null) {
                        C0287a c0287a8 = C0287a.this;
                        ViewOnClickListenerC0092c viewOnClickListenerC0092c = new ViewOnClickListenerC0092c(c0287a8.f1490b, c0287a8.f1491c, c0065c);
                        viewOnClickListenerC0092c.f739c = i3;
                        C0287a c0287a9 = C0287a.this;
                        viewOnClickListenerC0092c.f738b = c0287a9;
                        viewOnClickListenerC0092c.f737a = c0287a9;
                        AlertDialog alertDialog5 = viewOnClickListenerC0092c.f706g;
                        if (alertDialog5 != null && AbstractC0099i.m354q(alertDialog5)) {
                            AbstractC0099i.m353o(viewOnClickListenerC0092c.f706g, viewOnClickListenerC0092c.f708i);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.a$c */
    public static class c extends AsyncTask<Void, Void, Boolean> {

        /* JADX INFO: renamed from: a */
        public final WeakReference<ZArchiver> f1501a;

        /* JADX INFO: renamed from: b */
        public final Intent f1502b;

        /* JADX INFO: renamed from: c */
        public final boolean f1503c;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.a$c$a */
        public class a implements AbstractC0099i.b {
            public a() {
            }

            @Override // p017f0.AbstractC0099i.b
            /* JADX INFO: renamed from: a */
            public final void mo246a(AbstractC0099i abstractC0099i) {
                ZArchiver zArchiver = c.this.f1501a.get();
                if (zArchiver != null) {
                    zArchiver.finish();
                }
            }
        }

        public c(ZArchiver zArchiver, Intent intent, boolean z2) {
            this.f1501a = new WeakReference<>(zArchiver);
            this.f1502b = intent;
            this.f1503c = z2;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0020  */
        /* JADX INFO: renamed from: a */
        public static String m795a(Uri uri) {
            String str = null;
            String strM1075f = C0383f.m1075f(null, uri);
            if (strM1075f == null || C0415f.m1135c(strM1075f) == 1) {
                str = strM1075f;
            } else {
                File file = new File(strM1075f);
                if (file.exists() && file.canRead()) {
                    str = strM1075f;
                }
            }
            return str == null ? ZAIO.m872a(uri) : str;
        }

        @Override // android.os.AsyncTask
        public final Boolean doInBackground(Void[] voidArr) {
            ArrayList arrayList;
            String strM795a;
            Intent intent = this.f1502b;
            if ("android.intent.action.SEND".equals(intent.getAction())) {
                arrayList = new ArrayList();
                Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
                if ((parcelableExtra instanceof Uri) && (strM795a = m795a((Uri) parcelableExtra)) != null) {
                    arrayList.add(strM795a);
                }
            } else if ("android.intent.action.SEND_MULTIPLE".equals(intent.getAction())) {
                arrayList = new ArrayList();
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
                if (parcelableArrayListExtra != null && parcelableArrayListExtra.size() > 0 && (parcelableArrayListExtra.get(0) instanceof Uri)) {
                    Iterator it = parcelableArrayListExtra.iterator();
                    while (it.hasNext()) {
                        String strM795a2 = m795a((Uri) ((Parcelable) it.next()));
                        if (strM795a2 != null) {
                            arrayList.add(strM795a2);
                        }
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null || arrayList.size() <= 0) {
                return Boolean.FALSE;
            }
            ZArchiver zArchiver = this.f1501a.get();
            if (zArchiver == null) {
                return Boolean.FALSE;
            }
            try {
                zArchiver.f1386h.f1624c.f1492d = new C0449a((ArrayList<String>) arrayList);
                return Boolean.TRUE;
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Boolean bool) {
            C0449a c0449a;
            Boolean bool2 = bool;
            ZArchiver zArchiver = this.f1501a.get();
            if (zArchiver == null) {
                return;
            }
            try {
                AbstractC0099i abstractC0099iM841b = zArchiver.f1386h.m841b(-1, 1, 18);
                if (abstractC0099iM841b != null) {
                    abstractC0099iM841b.mo337d();
                }
            } catch (Exception unused) {
            }
            if (!bool2.booleanValue() || (c0449a = zArchiver.f1386h.f1624c.f1492d) == null) {
                ZApp.m725i(R.string.ERROR_DATA_ERROR);
                if (this.f1503c) {
                    zArchiver.finish();
                    return;
                }
                return;
            }
            try {
                C0129h c0129hM1202g = c0449a.m1202g();
                if (c0129hM1202g.m483j() && !c0129hM1202g.m482i()) {
                    C0305b c0305bM842c = zArchiver.f1386h.m842c();
                    c0305bM842c.m831l(c0129hM1202g, (byte) 0, 0);
                    zArchiver.m742L(c0305bM842c.f1593b, 128, c0129hM1202g);
                }
            } catch (Exception unused2) {
            }
            zArchiver.f1386h.f1624c.m793n(zArchiver, null, 8);
        }

        @Override // android.os.AsyncTask
        public final void onPreExecute() {
            ZArchiver zArchiver = this.f1501a.get();
            if (zArchiver == null) {
                return;
            }
            DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y(zArchiver.f1386h, zArchiver, R.string.MES_WHITE_START_SERVICE, 0);
            dialogInterfaceOnCancelListenerC0115y.m361p(18);
            dialogInterfaceOnCancelListenerC0115y.f737a = new a();
            dialogInterfaceOnCancelListenerC0115y.m387r();
        }
    }

    public C0287a(C0307d c0307d) {
        this.f1490b = c0307d;
    }

    /* JADX INFO: renamed from: d */
    public static void m782d(ZArchiver zArchiver, C0129h c0129h, C0129h c0129h2, String[] strArr) {
        String strM478e;
        if (c0129h != null) {
            if (C0015d.m43E(c0129h.f1015c) == 6) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.setDataAndType(SAF.m857h(zArchiver, c0129h, false), "application/vnd.android.package-archive");
                intent.setFlags(268435457);
                if (C0382e.m1069g(zArchiver, intent) == 0) {
                    return;
                }
            }
            strM478e = c0129h.m478e();
        } else if (c0129h2 == null) {
            return;
        } else {
            strM478e = strArr != null ? strArr[0] : "";
        }
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y(0, zArchiver, strM478e, zArchiver.f1386h);
        dialogInterfaceOnCancelListenerC0115y.m361p(23);
        dialogInterfaceOnCancelListenerC0115y.m387r();
        new C0472j0(dialogInterfaceOnCancelListenerC0115y, c0129h, c0129h2, strArr).m1098g(null, zArchiver.f4c);
    }

    /* JADX INFO: renamed from: j */
    public static void m783j(ZArchiver zArchiver, C0129h c0129h, long j2, boolean z2, int i2, int i3, byte b2) {
        new C0476l0(c0129h, j2, z2, i2, i3, b2).m1098g(null, zArchiver.f4c);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:65:0x0104  */
    /* JADX WARN: Code duplicated, block: B:67:0x0108  */
    /* JADX WARN: Code duplicated, block: B:71:0x0118 A[Catch: Exception -> 0x011b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x011b, blocks: (B:32:0x005d, B:41:0x0085, B:71:0x0118), top: B:76:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:86:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    @Override // p017f0.AbstractC0099i.b
    /* JADX INFO: renamed from: a */
    public final void mo246a(AbstractC0099i abstractC0099i) {
        ZArchiver zArchiver;
        int i2;
        InterfaceC0316c interfaceC0316c;
        ZArchiver zArchiver2;
        DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w;
        AlertDialog alertDialog;
        CheckBox checkBox;
        ZArchiver zArchiver3;
        int iMo338k = abstractC0099i.mo338k();
        C0306c c0306c = this.f1495g;
        try {
            if (iMo338k != 1) {
                int i3 = 2;
                if (iMo338k != 2) {
                    if (iMo338k == 4) {
                        DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w2 = (DialogInterfaceOnCancelListenerC0113w) abstractC0099i;
                        switch (dialogInterfaceOnCancelListenerC0113w2.m359j()) {
                            case 13:
                                m786f("zip", false);
                                break;
                            case 14:
                                m786f("7z", false);
                                break;
                            case 15:
                                String strM358i = dialogInterfaceOnCancelListenerC0113w2.m358i(0);
                                if (strM358i != null) {
                                    File file = new File(strM358i.concat(".hash"));
                                    if (!file.delete()) {
                                        file.getAbsolutePath();
                                    }
                                    File file2 = new File(strM358i);
                                    if (!file2.delete()) {
                                        file2.getAbsolutePath();
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                    if (iMo338k == 12) {
                        int i4 = abstractC0099i.f739c;
                        InterfaceC0316c interfaceC0316c2 = c0306c.f1616a.get();
                        if (interfaceC0316c2 != null) {
                            try {
                                interfaceC0316c2.SetStatusTask(i4, 15);
                            } catch (Exception unused) {
                            }
                        }
                        int i5 = abstractC0099i.f739c;
                        InterfaceC0316c interfaceC0316c3 = c0306c.f1616a.get();
                        if (interfaceC0316c3 == null) {
                            return;
                        }
                        interfaceC0316c3.SetPassword(i5, "");
                        interfaceC0316c3.HideNotification(i5);
                    } else {
                        if (iMo338k != 9) {
                            if (iMo338k == 10 && (zArchiver3 = this.f1491c) != null) {
                                zArchiver3.m732B(false);
                                return;
                            }
                            return;
                        }
                        ViewOnClickListenerC0092c viewOnClickListenerC0092c = (ViewOnClickListenerC0092c) abstractC0099i;
                        if (viewOnClickListenerC0092c.f711l) {
                            i3 = 8;
                        } else {
                            AlertDialog alertDialog2 = viewOnClickListenerC0092c.f706g;
                            boolean zIsChecked = (alertDialog2 == null || (checkBox = (CheckBox) alertDialog2.findViewById(R.id.cb_to_all)) == null) ? viewOnClickListenerC0092c.f710k : checkBox.isChecked();
                            if (zIsChecked) {
                                i3 = 18;
                            }
                        }
                        int i6 = viewOnClickListenerC0092c.f739c;
                        InterfaceC0316c interfaceC0316c4 = c0306c.f1616a.get();
                        if (interfaceC0316c4 == null) {
                            return;
                        }
                        interfaceC0316c4.SetOverwrite(i6, i3);
                        interfaceC0316c4.HideNotification(i6);
                    }
                } else {
                    if (C0358b.m1041l(256)) {
                        zArchiver2 = this.f1491c;
                        if (zArchiver2 == null) {
                            return;
                        }
                        dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(1, this.f1491c, zArchiver2.getString(R.string.MES_CONFIRM_CANCEL), this.f1490b);
                        dialogInterfaceOnCancelListenerC0113w.m361p(9);
                        dialogInterfaceOnCancelListenerC0113w.f739c = abstractC0099i.f739c;
                        dialogInterfaceOnCancelListenerC0113w.f738b = this;
                        dialogInterfaceOnCancelListenerC0113w.f737a = this;
                        alertDialog = dialogInterfaceOnCancelListenerC0113w.f833g;
                        if (alertDialog != null) {
                            AbstractC0099i.m354q(alertDialog);
                            dialogInterfaceOnCancelListenerC0113w.f833g.setCancelable(false);
                            return;
                        }
                        return;
                    }
                    zArchiver = this.f1491c;
                    if (zArchiver != null) {
                        zArchiver.m732B(false);
                    }
                    i2 = abstractC0099i.f739c;
                    interfaceC0316c = c0306c.f1616a.get();
                    if (interfaceC0316c == null) {
                        interfaceC0316c.SetStatusTask(i2, 15);
                    }
                }
            } else {
                if (C0358b.m1041l(256)) {
                    zArchiver2 = this.f1491c;
                    if (zArchiver2 == null) {
                        return;
                    }
                    dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(1, this.f1491c, zArchiver2.getString(R.string.MES_CONFIRM_CANCEL), this.f1490b);
                    dialogInterfaceOnCancelListenerC0113w.m361p(9);
                    dialogInterfaceOnCancelListenerC0113w.f739c = abstractC0099i.f739c;
                    dialogInterfaceOnCancelListenerC0113w.f738b = this;
                    dialogInterfaceOnCancelListenerC0113w.f737a = this;
                    alertDialog = dialogInterfaceOnCancelListenerC0113w.f833g;
                    if (alertDialog != null) {
                        AbstractC0099i.m354q(alertDialog);
                        dialogInterfaceOnCancelListenerC0113w.f833g.setCancelable(false);
                        return;
                    }
                    return;
                }
                zArchiver = this.f1491c;
                if (zArchiver != null) {
                    zArchiver.m732B(false);
                }
                i2 = abstractC0099i.f739c;
                interfaceC0316c = c0306c.f1616a.get();
                if (interfaceC0316c == null) {
                    interfaceC0316c.SetStatusTask(i2, 15);
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:344:0x0674  */
    /* JADX WARN: Code duplicated, block: B:345:0x067c  */
    /* JADX WARN: Code duplicated, block: B:352:0x069a  */
    /* JADX WARN: Code duplicated, block: B:365:0x06d8  */
    /* JADX WARN: Code duplicated, block: B:370:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:373:0x06f3  */
    /* JADX WARN: Code duplicated, block: B:374:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:377:0x0705  */
    /* JADX WARN: Code duplicated, block: B:379:0x070b  */
    /* JADX WARN: Code duplicated, block: B:380:0x0715  */
    /* JADX WARN: Code duplicated, block: B:571:0x0af4  */
    /* JADX WARN: Code duplicated, block: B:573:0x0afa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:575:0x0afc  */
    /* JADX WARN: Code duplicated, block: B:577:0x0b02  */
    /* JADX WARN: Code duplicated, block: B:578:0x0b04  */
    /* JADX WARN: Code duplicated, block: B:581:0x0b0e  */
    /* JADX WARN: Code duplicated, block: B:592:0x0b48  */
    /* JADX WARN: Code duplicated, block: B:596:0x0b6f  */
    /* JADX WARN: Code duplicated, block: B:598:0x0b7e  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p017f0.AbstractC0099i.c
    /* JADX INFO: renamed from: b */
    public final boolean mo245b(AbstractC0099i abstractC0099i) {
        boolean z2;
        C0129h c0129hM843d;
        InterfaceC0316c interfaceC0316c;
        String strM65a0;
        StringBuilder sb;
        char c2;
        String[] strArrM856g;
        C0412c.a aVarM1112f;
        String line;
        String str;
        String line2;
        String line3;
        String strSubstring;
        File parentFile;
        C0129h c0129h;
        String strM93u;
        boolean z3;
        C0287a c0287a;
        String str2;
        int length;
        int i2;
        C0129h c0129h2;
        C0129h c0129h3;
        ZArchiver zArchiver;
        String str3;
        CheckBox checkBox;
        int i3;
        String[] list;
        String[] list2;
        String strM65a1 = "";
        int selectedItemPosition = -1;
        str = null;
        String str4 = null;
        String str5 = null;
        switch (abstractC0099i.mo338k()) {
            case 2:
                ZArchiver zArchiver2 = this.f1491c;
                if (zArchiver2 != null) {
                    zArchiver2.m732B(false);
                }
                return true;
            case 3:
                DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m = (DialogInterfaceOnCancelListenerC0103m) abstractC0099i;
                String strTrim = dialogInterfaceOnCancelListenerC0103m.f753h.trim();
                if (strTrim.isEmpty()) {
                    return false;
                }
                int iM359j = dialogInterfaceOnCancelListenerC0103m.m359j();
                try {
                    if (iM359j == 1) {
                        if (C0181d.m560a(strTrim)) {
                            return false;
                        }
                        if (dialogInterfaceOnCancelListenerC0103m.m359j() == 24) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (this.f1490b.m845f(4)) {
                            C0306c c0306c = this.f1495g;
                            c0129hM843d = this.f1490b.m843d();
                            interfaceC0316c = c0306c.f1616a.get();
                            if (interfaceC0316c != null && c0129hM843d.m480g() && !C0306c.m834c(c0129hM843d)) {
                                String strM97y = C0015d.m97y(c0129hM843d.f1015c);
                                strM65a0 = C0015d.m65a0(c0129hM843d.f1017e);
                                sb = new StringBuilder();
                                if (!C0385h.m1081e(strM65a0)) {
                                    sb.append("\\-spp");
                                    sb.append(strM65a0);
                                    sb.append('/');
                                }
                                C0015d.m70e(sb, strM97y, C0015d.m89q(c0129hM843d), false);
                                interfaceC0316c.ArchiveCreateFile(strM97y, c0129hM843d, sb.toString(), strTrim, z2, C0306c.m835f(c0129hM843d, true) ? 1 : 0);
                            }
                        } else if (!this.f1495g.m838d(this.f1490b.m843d(), 3)) {
                            C0474k0 c0474k0 = new C0474k0(strTrim, this.f1490b.m843d(), z2);
                            ZArchiver zArchiver3 = this.f1491c;
                            c0474k0.m1098g(zArchiver3, zArchiver3.f4c);
                        }
                    } else if (iM359j == 12) {
                        C0449a c0449a = this.f1492d;
                        if (c0449a == null || c0449a.m1203h() != 1 || !dialogInterfaceOnCancelListenerC0103m.f754i) {
                            return true;
                        }
                        C0129h c0129hM1202g = this.f1492d.m1202g();
                        C0046d c0046d = this.f1492d.f2256a.get(0);
                        if (c0046d.f352a.equals(strTrim)) {
                            return true;
                        }
                        if (c0129hM1202g.m488o() && C0181d.m560a(strTrim)) {
                            return false;
                        }
                        C0305b c0305bM842c = this.f1490b.m842c();
                        if (c0305bM842c.m828i() ? AbstractC0127f.m462e(new C0129h(strTrim, c0129hM1202g.m479f())) : c0305bM842c.f1608q.m172e(strTrim)) {
                            ZApp.m725i(R.string.MES_FILE_EXISTS);
                            return false;
                        }
                        if (this.f1490b.m845f(4)) {
                            C0306c c0306c2 = this.f1495g;
                            String str6 = c0046d.f352a;
                            InterfaceC0316c interfaceC0316c2 = c0306c2.f1616a.get();
                            if (interfaceC0316c2 != null && !C0306c.m834c(c0129hM1202g)) {
                                strM65a1 = c0129hM1202g.m480g() ? C0015d.m65a0(c0129hM1202g.f1017e) : "";
                                C0129h c0129hM89q = C0015d.m89q(c0129hM1202g);
                                String strM478e = c0129hM89q.m478e();
                                if (!C0385h.m1081e(strM65a1)) {
                                    str6 = strM65a1 + '/' + str6;
                                    strTrim = strM65a1 + '/' + strTrim;
                                }
                                String str7 = strTrim;
                                String str8 = str6;
                                StringBuilder sb2 = new StringBuilder();
                                C0015d.m70e(sb2, strM478e, c0129hM89q, false);
                                interfaceC0316c2.ArchiveRenFile(strM478e, c0129hM89q, sb2.toString(), str8, str7, C0306c.m835f(c0129hM1202g, true) ? 1 : 0);
                            }
                        } else if (!this.f1495g.m838d(new C0129h(c0046d.f352a, c0129hM1202g), 4)) {
                            C0307d c0307d = this.f1490b;
                            C0486q0 c0486q0 = new C0486q0(c0307d.f1626e, c0307d.f1628g, c0129hM1202g, c0046d, strTrim);
                            ZArchiver zArchiver4 = this.f1491c;
                            c0486q0.m1098g(zArchiver4, zArchiver4.f4c);
                        }
                    } else if (iM359j != 16) {
                        if (iM359j == 24) {
                            if (C0181d.m560a(strTrim)) {
                                return false;
                            }
                            if (dialogInterfaceOnCancelListenerC0103m.m359j() == 24) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (this.f1490b.m845f(4)) {
                                C0306c c0306c3 = this.f1495g;
                                c0129hM843d = this.f1490b.m843d();
                                interfaceC0316c = c0306c3.f1616a.get();
                                if (interfaceC0316c != null) {
                                    String strM97y2 = C0015d.m97y(c0129hM843d.f1015c);
                                    strM65a0 = C0015d.m65a0(c0129hM843d.f1017e);
                                    sb = new StringBuilder();
                                    if (!C0385h.m1081e(strM65a0)) {
                                        sb.append("\\-spp");
                                        sb.append(strM65a0);
                                        sb.append('/');
                                    }
                                    C0015d.m70e(sb, strM97y2, C0015d.m89q(c0129hM843d), false);
                                    interfaceC0316c.ArchiveCreateFile(strM97y2, c0129hM843d, sb.toString(), strTrim, z2, C0306c.m835f(c0129hM843d, true) ? 1 : 0);
                                }
                            } else if (!this.f1495g.m838d(this.f1490b.m843d(), 3)) {
                                C0474k0 c0474k1 = new C0474k0(strTrim, this.f1490b.m843d(), z2);
                                ZArchiver zArchiver5 = this.f1491c;
                                c0474k1.m1098g(zArchiver5, zArchiver5.f4c);
                            }
                        }
                    } else if (dialogInterfaceOnCancelListenerC0103m.f754i && !this.f1495g.m838d(this.f1490b.m843d(), 1)) {
                        C0307d c0307d2 = this.f1490b;
                        C0492t0 c0492t0 = new C0492t0(c0307d2.f1626e, strTrim, c0307d2.m843d());
                        ZArchiver zArchiver6 = this.f1491c;
                        c0492t0.m1098g(zArchiver6, zArchiver6.f4c);
                    }
                    break;
                } catch (Exception unused) {
                }
                return true;
            case 4:
                DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w = (DialogInterfaceOnCancelListenerC0113w) abstractC0099i;
                int iM359j2 = dialogInterfaceOnCancelListenerC0113w.m359j();
                if (iM359j2 == 3) {
                    C0449a c0449a2 = this.f1492d;
                    if (c0449a2 != null) {
                        InterfaceC0316c interfaceC0316c3 = this.f1495g.f1616a.get();
                        if (interfaceC0316c3 == null) {
                            c2 = 1;
                        } else {
                            C0129h c0129hM1202g2 = c0449a2.m1202g();
                            try {
                                if (c0129hM1202g2.m488o() || c0129hM1202g2.m484k()) {
                                    int iM1203h = c0449a2.m1203h();
                                    if (iM1203h == 1) {
                                        byte bM1136d = C0415f.m1136d(c0129hM1202g2, true);
                                        if (bM1136d == 2) {
                                            c2 = 4;
                                        } else {
                                            interfaceC0316c3.Remove(c0129hM1202g2, c0449a2.m1205j(), (bM1136d == 3 && C0358b.m1038i(c0129hM1202g2.f1015c)) ? 1 : 0);
                                        }
                                    } else {
                                        ArrayList<C0046d> arrayList = c0449a2.f2256a;
                                        if (!arrayList.isEmpty()) {
                                            int i4 = 0;
                                            if (arrayList.get(0) instanceof C0048f) {
                                                Collections.sort(arrayList, new C0134e(i4));
                                            }
                                        }
                                        boolean zM1039j = C0358b.m1039j();
                                        ArrayList arrayList2 = new ArrayList(iM1203h);
                                        int i5 = 0;
                                        for (int i6 = 0; i6 < iM1203h; i6++) {
                                            C0129h c0129hM1196a = c0449a2.m1196a(i6);
                                            arrayList2.add(c0129hM1196a);
                                            if (zM1039j && i5 == 0 && C0306c.m835f(c0129hM1196a, true)) {
                                                i5 = 1;
                                            }
                                        }
                                        interfaceC0316c3.RemoveList(arrayList2, i5);
                                    }
                                    c2 = 0;
                                } else if (c0129hM1202g2.m480g()) {
                                    C0129h c0129hM89q2 = C0015d.m89q(c0129hM1202g2);
                                    String strM478e2 = c0129hM89q2.m478e();
                                    if (!C0306c.m834c(c0129hM89q2)) {
                                        StringBuilder sb3 = new StringBuilder();
                                        if (c0449a2.f2257b != null) {
                                            String strM68d = C0015d.m68d(C0015d.m66b0(c0129hM1202g2.f1017e));
                                            for (String str9 : c0449a2.m1205j()) {
                                                sb3.append("\\");
                                                sb3.append(strM68d);
                                                sb3.append(str9);
                                            }
                                        } else {
                                            int iM1203h2 = c0449a2.m1203h();
                                            for (int i7 = 0; i7 < iM1203h2; i7++) {
                                                C0129h c0129h4 = c0449a2.f2257b;
                                                if (c0129h4 == null) {
                                                    c0129h4 = ((C0048f) c0449a2.f2256a.get(i7)).f365k;
                                                }
                                                String strM68d2 = C0015d.m68d(C0015d.m66b0(c0129h4.f1017e));
                                                sb3.append("\\");
                                                sb3.append(strM68d2);
                                                sb3.append(c0449a2.m1197b(i7));
                                            }
                                        }
                                        StringBuilder sb4 = new StringBuilder();
                                        C0015d.m70e(sb4, strM478e2, c0129hM89q2, false);
                                        interfaceC0316c3.ArchiveDelFiles(strM478e2, c0129hM89q2, sb4.toString(), sb3.toString(), C0306c.m835f(c0129hM1202g2, true) ? 1 : 0);
                                        c2 = 0;
                                    } else {
                                        c2 = 5;
                                    }
                                } else {
                                    c2 = 3;
                                }
                            } catch (Exception unused2) {
                                c2 = 2;
                            }
                        }
                        if (c2 == 0) {
                            if (this.f1492d.m1199d(C0079a.m266m().m277l())) {
                                C0079a.m266m().m267a();
                            }
                            if (this.f1492d.m1199d(C0070h.m253d().f493a)) {
                                C0070h.m253d().m254a();
                            }
                        } else if (c2 == 4) {
                            C0129h c0129hM1196a2 = this.f1492d.m1196a(0);
                            String strM78i = (c0129hM1196a2.m486m() && (strArrM856g = SAF.m856g(c0129hM1196a2.m491r())) != null && strArrM856g.length == 2 && (aVarM1112f = C0412c.m1112f(strArrM856g[0])) != null) ? C0015d.m78i(aVarM1112f.f2153b, strArrM856g[1]) : null;
                            if (strM78i == null) {
                                strM78i = c0129hM1196a2.m491r();
                            }
                            C0412c.a aVarM1111e = C0412c.m1111e(strM78i);
                            if (aVarM1111e != null) {
                                String strM1127b = aVarM1111e.m1127b(strM78i);
                                this.f1494f = new b(C0015d.m39A(strM78i), C0015d.m97y(strM78i), aVarM1111e.m1128c(strM1127b, false));
                                if (aVarM1111e.m1129d(strM1127b)) {
                                    this.f1491c.onActivityResult(109, -1, null);
                                } else {
                                    DialogInterfaceOnClickListenerC0109s.m377r(this.f1490b, this.f1491c, 109, 0, aVarM1111e, 3, strM1127b);
                                }
                            }
                        }
                    }
                    break;
                } else {
                    try {
                        if (iM359j2 == 9) {
                            ZArchiver zArchiver7 = this.f1491c;
                            if (zArchiver7 != null) {
                                zArchiver7.m732B(false);
                            }
                            C0306c c0306c4 = this.f1495g;
                            int i8 = abstractC0099i.f739c;
                            InterfaceC0316c interfaceC0316c4 = c0306c4.f1616a.get();
                            if (interfaceC0316c4 != null) {
                                interfaceC0316c4.SetStatusTask(i8, 15);
                            }
                            break;
                        } else if (iM359j2 == 17) {
                            SparseArray<Object> sparseArray = abstractC0099i.f741e;
                            C0306c.a aVar = (C0306c.a) (sparseArray == null ? null : sparseArray.get(0));
                            SparseArray<Object> sparseArray2 = abstractC0099i.f741e;
                            C0129h c0129h5 = (C0129h) (sparseArray2 != null ? sparseArray2.get(1) : null);
                            if (aVar != null && c0129h5 != null && this.f1491c != null) {
                                if (C0079a.m266m().m278n(aVar.f1617a.f1015c)) {
                                    C0079a.m266m().m267a();
                                }
                                aVar.f1621e = (byte) 2;
                                m787g(aVar);
                            }
                        } else if (iM359j2 == 19) {
                            String strM358i = dialogInterfaceOnCancelListenerC0113w.m358i(1);
                            if (!C0385h.m1081e(strM358i)) {
                                Integer.parseInt(strM358i);
                            }
                            break;
                        } else {
                            switch (iM359j2) {
                                case 13:
                                    m786f("zip", true);
                                    break;
                                case 14:
                                    m786f("7z", true);
                                    break;
                                case 15:
                                    String strM358i2 = dialogInterfaceOnCancelListenerC0113w.m358i(0);
                                    if (strM358i2 != null) {
                                        File file = new File(strM358i2.concat(".hash"));
                                        if (file.exists()) {
                                            try {
                                                FileReader fileReader = new FileReader(file);
                                                LineNumberReader lineNumberReader = new LineNumberReader(fileReader);
                                                lineNumberReader.readLine();
                                                line = lineNumberReader.readLine();
                                                try {
                                                    strSubstring = lineNumberReader.readLine();
                                                    try {
                                                        line2 = lineNumberReader.readLine();
                                                        try {
                                                            line3 = lineNumberReader.readLine();
                                                            try {
                                                                lineNumberReader.close();
                                                                fileReader.close();
                                                            } catch (Exception unused3) {
                                                                str4 = line3;
                                                                str = str4;
                                                                str5 = strSubstring;
                                                                line3 = str;
                                                                strSubstring = str5;
                                                            }
                                                            break;
                                                        } catch (Exception unused4) {
                                                        }
                                                    } catch (Exception unused5) {
                                                        line2 = null;
                                                    }
                                                } catch (Exception unused6) {
                                                    str = null;
                                                    line2 = null;
                                                    line3 = str;
                                                    strSubstring = str5;
                                                    File file2 = new File(strM358i2);
                                                    parentFile = file2.getParentFile();
                                                    if (parentFile == null) {
                                                        c0129h = new C0129h("/");
                                                    } else {
                                                        c0129h = new C0129h(parentFile.getAbsolutePath());
                                                    }
                                                    strM93u = C0015d.m93u(line);
                                                    if (strM93u.equals("zip")) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = true;
                                                    }
                                                    if (z3) {
                                                        c0287a = this;
                                                        str2 = "";
                                                    } else {
                                                        c0287a = this;
                                                        str2 = "";
                                                    }
                                                    String name = file2.getName();
                                                    length = name.length();
                                                    if (strSubstring != null) {
                                                        strSubstring = "";
                                                    } else {
                                                        strSubstring = "";
                                                    }
                                                    if (strSubstring.length() > length) {
                                                        int length2 = strSubstring.length() - length;
                                                        i2 = 0;
                                                        strSubstring = strSubstring.substring(0, length2);
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    if (strSubstring.endsWith("/")) {
                                                        strM65a1 = strSubstring;
                                                    } else if (strSubstring.length() > 1) {
                                                        strM65a1 = strSubstring.substring(i2, strSubstring.length() - 1);
                                                    }
                                                    c0287a.f1495g.m836a(c0129h, "\\".concat(name), str2, new C0129h("arch", line, strM65a1), 256);
                                                    return true;
                                                }
                                            } catch (Exception unused7) {
                                                line = "";
                                            }
                                            File file3 = new File(strM358i2);
                                            parentFile = file3.getParentFile();
                                            if (parentFile == null) {
                                                c0129h = new C0129h("/");
                                            } else {
                                                c0129h = new C0129h(parentFile.getAbsolutePath());
                                            }
                                            strM93u = C0015d.m93u(line);
                                            if (strM93u.equals("zip") || strM93u.equals("7z")) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (z3 || line3 == null || line2 == null) {
                                                c0287a = this;
                                                str2 = "";
                                            } else {
                                                String strConcat = "\\-p".concat(line3);
                                                if (line2.charAt(0) == 'a') {
                                                    strConcat = strConcat + "\\-mhe";
                                                    c0287a = this;
                                                    if (c0287a.f1491c != null) {
                                                        C0070h c0070hM253d = C0070h.m253d();
                                                        if (!c0070hM253d.m257e(line)) {
                                                            c0070hM253d.m259g(line, line3);
                                                        }
                                                    }
                                                } else {
                                                    c0287a = this;
                                                }
                                                str2 = strConcat;
                                            }
                                            String name2 = file3.getName();
                                            length = name2.length();
                                            if (strSubstring != null || strSubstring.length() <= length) {
                                                strSubstring = "";
                                            }
                                            if (strSubstring.length() > length) {
                                                int length3 = strSubstring.length() - length;
                                                i2 = 0;
                                                strSubstring = strSubstring.substring(0, length3);
                                            } else {
                                                i2 = 0;
                                            }
                                            if (strSubstring.endsWith("/")) {
                                                strM65a1 = strSubstring;
                                            } else if (strSubstring.length() > 1) {
                                                strM65a1 = strSubstring.substring(i2, strSubstring.length() - 1);
                                            }
                                            c0287a.f1495g.m836a(c0129h, "\\".concat(name2), str2, new C0129h("arch", line, strM65a1), 256);
                                        }
                                    }
                                    break;
                                default:
                                    break;
                            }
                        }
                    } catch (Exception unused8) {
                    }
                }
                return true;
            case 5:
                DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h = (DialogInterfaceOnCancelListenerC0098h) abstractC0099i;
                int iM359j3 = dialogInterfaceOnCancelListenerC0098h.m359j();
                if (iM359j3 == 10) {
                    C0449a c0449a3 = this.f1492d;
                    if (c0449a3 != null) {
                        if (!dialogInterfaceOnCancelListenerC0098h.f731r) {
                            m788h(dialogInterfaceOnCancelListenerC0098h.f736w, dialogInterfaceOnCancelListenerC0098h.f735v, dialogInterfaceOnCancelListenerC0098h.f728o, dialogInterfaceOnCancelListenerC0098h.m349s(), dialogInterfaceOnCancelListenerC0098h.f733t != null ? (byte) 1 : (byte) 0);
                            return true;
                        }
                        C0306c c0306c5 = this.f1495g;
                        String str10 = dialogInterfaceOnCancelListenerC0098h.f736w;
                        String str11 = dialogInterfaceOnCancelListenerC0098h.f735v;
                        String strM78i2 = dialogInterfaceOnCancelListenerC0098h.f728o;
                        boolean zM349s = dialogInterfaceOnCancelListenerC0098h.m349s();
                        InterfaceC0316c interfaceC0316c5 = c0306c5.f1616a.get();
                        if (interfaceC0316c5 != null) {
                            C0129h c0129hM1202g3 = c0449a3.m1202g();
                            if (c0129hM1202g3.m488o()) {
                                if (strM78i2.startsWith("/")) {
                                    c0129h2 = new C0129h(C0015d.m39A(strM78i2));
                                } else {
                                    String str12 = C0358b.f1979a;
                                    c0129h2 = str12 != null ? new C0129h(str12) : c0129hM1202g3;
                                    strM78i2 = C0015d.m78i(c0129h2.m491r(), strM78i2);
                                }
                                boolean z4 = C0306c.m835f(c0129h2, true) || C0306c.m835f(c0129hM1202g3, false);
                                char c3 = strM78i2.contains("<name>") ? (char) 1 : strM78i2.contains("<name.ext>") ? (char) 2 : (char) 0;
                                int iM1203h3 = c0449a3.m1203h();
                                boolean zM1201f = c0449a3.m1201f();
                                ArrayList arrayList3 = new ArrayList(iM1203h3);
                                ArrayList arrayList4 = new ArrayList(iM1203h3);
                                int i9 = 0;
                                while (i9 < iM1203h3) {
                                    int i10 = iM1203h3;
                                    String strM1197b = c0449a3.m1197b(i9);
                                    arrayList3.add(zM1201f ? c0449a3.m1196a(i9).m491r() : strM1197b);
                                    if (c3 == 0) {
                                        arrayList4.add(new C0129h(strM1197b));
                                    } else if (c3 == 1) {
                                        if (!c0449a3.m1200e(i9)) {
                                            strM1197b = C0015d.m64Z(strM1197b);
                                        }
                                        arrayList4.add(new C0129h(strM78i2.replace("<name>", strM1197b)));
                                    } else if (c3 == 2) {
                                        arrayList4.add(new C0129h(strM78i2.replace("<name.ext>", strM1197b)));
                                    }
                                    i9++;
                                    iM1203h3 = i10;
                                    zM1201f = zM1201f;
                                }
                                String str13 = "-t" + str10 + str11;
                                if (str10.equals("7z") && (str11.contains("-mx=9") || str11.contains("-mx=7"))) {
                                    C0079a.m266m().m267a();
                                }
                                int i11 = zM349s ? 4 : 0;
                                int i12 = z4 ? i11 | 1 : i11;
                                try {
                                    if (c0129hM1202g3.m487n()) {
                                        C0129h c0129h6 = new C0129h(c0129hM1202g3);
                                        String str14 = c0129h6.f1015c;
                                        c0129h6.f1015c = str14.substring(0, str14.length() - 3);
                                        c0129h3 = c0129h6;
                                    } else {
                                        c0129h3 = c0129hM1202g3;
                                    }
                                    interfaceC0316c5.ArchiveCompressMulti(arrayList4, str13, arrayList3, c0129h3, i12);
                                    break;
                                } catch (Exception unused9) {
                                }
                            }
                        }
                    }
                } else if (iM359j3 == 11 && (zArchiver = this.f1491c) != null) {
                    zArchiver.m736F('\"');
                    String str15 = dialogInterfaceOnCancelListenerC0098h.f728o;
                    this.f1494f = new C0306c.a(str15.startsWith("/") ? new C0129h(str15) : new C0129h(str15, this.f1490b.m843d()), dialogInterfaceOnCancelListenerC0098h.f736w, dialogInterfaceOnCancelListenerC0098h.f735v, dialogInterfaceOnCancelListenerC0098h.m349s(), (byte) 0);
                    ZApp.m725i(R.string.MES_SELECT_FILES);
                }
                return true;
            case 6:
                mo246a(abstractC0099i);
                return true;
            case 7:
                DialogInterfaceOnCancelListenerC0106p dialogInterfaceOnCancelListenerC0106p = (DialogInterfaceOnCancelListenerC0106p) abstractC0099i;
                if (dialogInterfaceOnCancelListenerC0106p.m373u(false).isEmpty()) {
                    str3 = "";
                } else {
                    str3 = "\\-p" + dialogInterfaceOnCancelListenerC0106p.m373u(true);
                    if (dialogInterfaceOnCancelListenerC0106p.f804o == 2 && dialogInterfaceOnCancelListenerC0106p.f796g != null) {
                        Spinner spinner = (Spinner) dialogInterfaceOnCancelListenerC0106p.f798i.findViewById(R.id.spn_encrypt);
                        if (spinner.getVisibility() == 0) {
                            selectedItemPosition = spinner.getSelectedItemPosition();
                        }
                    }
                    if (selectedItemPosition == 1) {
                        str3 = str3 + "\\-mem=AES128";
                    } else if (selectedItemPosition == 2) {
                        str3 = str3 + "\\-mem=AES192";
                    } else if (selectedItemPosition == 3) {
                        str3 = str3 + "\\-mem=AES256";
                    }
                }
                if (dialogInterfaceOnCancelListenerC0106p.m372t() >= 0) {
                    str3 = str3 + "\\-mx=" + dialogInterfaceOnCancelListenerC0106p.m372t();
                }
                String str16 = str3;
                if (dialogInterfaceOnCancelListenerC0106p.m359j() == 6) {
                    AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(dialogInterfaceOnCancelListenerC0106p.m374v());
                    if (!abstractC0127fM463u.mo420k()) {
                        return true;
                    }
                    this.f1495g.m836a(new C0129h(abstractC0127fM463u.m468j()), "\\" + abstractC0127fM463u.m467i(), str16, this.f1490b.m843d(), 0);
                    return true;
                }
                if (dialogInterfaceOnCancelListenerC0106p.f796g != null) {
                    FSSelect fSSelect = (FSSelect) dialogInterfaceOnCancelListenerC0106p.f798i.findViewById(R.id.fss_file_list);
                    C0129h path = fSSelect.getPath();
                    String strM68d3 = path.m486m() ? C0015d.m68d(path.f1015c) : null;
                    C0045c c0045c = (C0045c) fSSelect.getAdapter();
                    if (c0045c != null && c0045c.f373h.f334a > 0) {
                        StringBuilder sb5 = new StringBuilder();
                        for (int i13 : c0045c.m191d()) {
                            C0046d c0046dM189a = c0045c.getItem(i13);
                            sb5.append("\\");
                            if (strM68d3 != null) {
                                sb5.append(strM68d3);
                            }
                            sb5.append(c0046dM189a.f352a);
                        }
                        strM65a1 = sb5.toString();
                    }
                }
                String str17 = strM65a1;
                if (C0385h.m1081e(str17)) {
                    return true;
                }
                this.f1495g.m836a(dialogInterfaceOnCancelListenerC0106p.m374v(), str17, str16, this.f1490b.m843d(), 0);
                return true;
            case 8:
            case 13:
            case 14:
            default:
                return false;
            case 9:
                ViewOnClickListenerC0092c viewOnClickListenerC0092c = (ViewOnClickListenerC0092c) abstractC0099i;
                int i14 = viewOnClickListenerC0092c.f712m ? 4 : 1;
                AlertDialog alertDialog = viewOnClickListenerC0092c.f706g;
                boolean zIsChecked = (alertDialog == null || (checkBox = (CheckBox) alertDialog.findViewById(R.id.cb_to_all)) == null) ? viewOnClickListenerC0092c.f710k : checkBox.isChecked();
                if (zIsChecked) {
                    i14 |= 16;
                }
                C0306c c0306c6 = this.f1495g;
                int i15 = viewOnClickListenerC0092c.f739c;
                InterfaceC0316c interfaceC0316c6 = c0306c6.f1616a.get();
                if (interfaceC0316c6 == null) {
                    return true;
                }
                try {
                    interfaceC0316c6.SetOverwrite(i15, i14);
                    interfaceC0316c6.HideNotification(i15);
                    return true;
                } catch (Exception unused10) {
                    return true;
                }
            case 10:
                DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v = (DialogInterfaceOnCancelListenerC0112v) abstractC0099i;
                ZArchiver zArchiver8 = this.f1491c;
                if (zArchiver8 != null) {
                    m793n(zArchiver8, dialogInterfaceOnCancelListenerC0112v, dialogInterfaceOnCancelListenerC0112v.f826j);
                }
                return true;
            case 11:
                if (this.f1491c == null) {
                    return false;
                }
                DialogInterfaceOnCancelListenerC0088a dialogInterfaceOnCancelListenerC0088a = (DialogInterfaceOnCancelListenerC0088a) abstractC0099i;
                String str18 = dialogInterfaceOnCancelListenerC0088a.f686i;
                strM65a1 = str18 != null ? str18.replace('|', '!').replace(']', ')').replace('[', '(') : "";
                int i16 = dialogInterfaceOnCancelListenerC0088a.f688k;
                try {
                    try {
                        if (dialogInterfaceOnCancelListenerC0088a.m359j() != 21) {
                            if (dialogInterfaceOnCancelListenerC0088a.m359j() == 22) {
                                C0357a.m1028j(this.f1491c, C0015d.m79i0(-1, dialogInterfaceOnCancelListenerC0088a.m358i(0)), i16, strM65a1);
                            }
                            this.f1491c.m748R(2);
                            return true;
                        }
                        C0449a c0449a4 = this.f1492d;
                        if (c0449a4 == null || c0449a4.m1203h() != 1 || C0385h.m1081e(strM65a1) || !this.f1492d.m1202g().m488o()) {
                            return false;
                        }
                        C0357a.m1019a(i16, this.f1491c, strM65a1, this.f1492d.m1196a(0).m491r());
                        this.f1491c.m748R(2);
                        return true;
                    } catch (Exception unused11) {
                        return true;
                    }
                } catch (Exception unused12) {
                }
                break;
            case 12:
                DialogInterfaceOnCancelListenerC0101k dialogInterfaceOnCancelListenerC0101k = (DialogInterfaceOnCancelListenerC0101k) abstractC0099i;
                C0306c c0306c7 = this.f1495g;
                int i17 = dialogInterfaceOnCancelListenerC0101k.f739c;
                String str19 = dialogInterfaceOnCancelListenerC0101k.f750i;
                InterfaceC0316c interfaceC0316c7 = c0306c7.f1616a.get();
                if (interfaceC0316c7 == null) {
                    return true;
                }
                try {
                    interfaceC0316c7.SetPassword(i17, str19);
                    interfaceC0316c7.HideNotification(i17);
                    return true;
                } catch (Exception unused13) {
                    return true;
                }
            case 15:
                C0358b.m1044o(this.f1491c, 64);
                if (this.f1491c == null) {
                    return false;
                }
                String strM358i3 = abstractC0099i.m358i(1);
                if (strM358i3 != null) {
                    int i18 = Integer.parseInt(strM358i3);
                    switch (i18) {
                        case 1:
                            this.f1491c.m734D(R.id.bPast);
                            break;
                        case 2:
                        case 3:
                            C0449a c0449a5 = this.f1492d;
                            if (c0449a5 != null) {
                                this.f1495g.m837b(c0449a5, this.f1490b.m843d(), i18 == 3, this.f1490b.m845f(2));
                            }
                            break;
                        case 4:
                            m793n(this.f1491c, null, 23);
                            break;
                        case 5:
                            m793n(this.f1491c, null, 98);
                            break;
                        case 6:
                            m793n(this.f1491c, null, 27);
                            break;
                        case 7:
                            this.f1491c.m734D(R.id.bNewFolder);
                            break;
                        case 8:
                            m785e(this.f1490b.m843d(), this.f1490b.m845f(2));
                            break;
                        case 9:
                            this.f1491c.m734D(R.id.bNewFile);
                            break;
                    }
                }
                C0307d c0307d3 = this.f1490b;
                if (c0307d3.f1622a == 0 || !c0307d3.f1624c.m792m(this.f1491c, false)) {
                    return true;
                }
                this.f1491c.f3b.finish();
                return true;
            case 16:
                DialogInterfaceOnClickListenerC0114x dialogInterfaceOnClickListenerC0114x = (DialogInterfaceOnClickListenerC0114x) abstractC0099i;
                if ((dialogInterfaceOnClickListenerC0114x.m384t().f846a != 0 ? 1 : 0) == 0) {
                    return true;
                }
                C0494u0 c0494u0 = new C0494u0(dialogInterfaceOnClickListenerC0114x.f839h, dialogInterfaceOnClickListenerC0114x.f840i, dialogInterfaceOnClickListenerC0114x.m384t());
                ZArchiver zArchiver9 = this.f1491c;
                c0494u0.m1098g(zArchiver9, zArchiver9.f4c);
                return true;
            case 17:
                DialogInterfaceOnCancelListenerC0090b dialogInterfaceOnCancelListenerC0090b = (DialogInterfaceOnCancelListenerC0090b) abstractC0099i;
                if (!(!dialogInterfaceOnCancelListenerC0090b.f697j.equals(dialogInterfaceOnCancelListenerC0090b.f696i)) || (i3 = Build.VERSION.SDK_INT) < 33) {
                    return true;
                }
                if (dialogInterfaceOnCancelListenerC0090b.m359j() != 1) {
                    if (dialogInterfaceOnCancelListenerC0090b.m359j() != 12) {
                        return true;
                    }
                    String strM78i3 = C0015d.m78i(dialogInterfaceOnCancelListenerC0090b.f698k, dialogInterfaceOnCancelListenerC0090b.f697j);
                    String str20 = dialogInterfaceOnCancelListenerC0090b.f696i;
                    C0412c.a aVarM1111e2 = C0412c.m1111e(strM78i3);
                    if (aVarM1111e2 == null) {
                        return true;
                    }
                    String strM1127b2 = aVarM1111e2.m1127b(strM78i3);
                    this.f1494f = new b(strM78i3, str20, aVarM1111e2.m1128c(strM1127b2, false));
                    if (aVarM1111e2.m1129d(strM1127b2)) {
                        this.f1491c.onActivityResult(110, -1, null);
                        return true;
                    }
                    DialogInterfaceOnClickListenerC0109s.m377r(this.f1490b, this.f1491c, 110, 0, aVarM1111e2, 3, strM1127b2);
                    return true;
                }
                String str21 = dialogInterfaceOnCancelListenerC0090b.f698k;
                String str22 = dialogInterfaceOnCancelListenerC0090b.f696i;
                C0412c.a aVarM1111e3 = C0412c.m1111e(str21);
                if (aVarM1111e3 == null) {
                    return true;
                }
                String strM78i4 = C0015d.m78i(str21, str22);
                if ((!aVarM1111e3.m1130e() || i3 >= 34) ? C0181d.m568i(strM78i4) : C0181d.m569j(strM78i4)) {
                    ZArchiver zArchiver10 = this.f1491c;
                    if (zArchiver10 == null) {
                        return true;
                    }
                    zArchiver10.f4c.m1091b(new C0483p(new C0129h("file", strM78i4)), false);
                    return true;
                }
                ZApp zApp = ZApp.f1375c;
                if (zApp == null) {
                    return true;
                }
                boolean zEndsWith = str21.endsWith("Android/obb");
                File file4 = new File(str21, "ru.zdevs.zarchiver");
                if (file4.exists()) {
                    if (!zEndsWith && (list = file4.list()) != null && list.length > 0) {
                        for (String str23 : list) {
                            if (str23.equals("cache") && (list2 = new File(file4, "cache").list()) != null && list2.length > 0) {
                                return true;
                            }
                        }
                        C0180c.m556c(file4);
                    }
                } else if (zEndsWith) {
                    zApp.getObbDirs();
                } else {
                    zApp.getDataDir();
                    zApp.getExternalCacheDirs();
                }
                if (!file4.exists() && !file4.mkdirs()) {
                    return true;
                }
                if (str22.equals("ru.zdevs.zarchiver")) {
                    this.f1491c.mo341g(new C0483p(new C0129h(strM78i4)));
                    return true;
                }
                String strConcat2 = (zEndsWith ? "Android/obb/" : "Android/data/").concat("ru.zdevs.zarchiver");
                this.f1494f = new b(str21, str22, aVarM1111e3.m1128c(strConcat2, false));
                if (aVarM1111e3.m1129d(strConcat2)) {
                    this.f1491c.onActivityResult(108, -1, null);
                    return true;
                }
                DialogInterfaceOnClickListenerC0109s.m377r(this.f1490b, this.f1491c, 108, 0, aVarM1111e3, 3, strConcat2);
                return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0067  */
    @Override // p055w0.C0412c.b
    /* JADX INFO: renamed from: c */
    public final void mo784c(StorageVolume storageVolume, boolean z2) {
        ZArchiver zArchiver;
        boolean z3 = false;
        boolean z4 = storageVolume == null;
        if (storageVolume == null || Build.VERSION.SDK_INT < 24) {
            z3 = true;
        } else {
            if (z2) {
                C0412c.a aVarM1123q = C0412c.m1123q(storageVolume);
                if (aVarM1123q != null) {
                    C0410a.m1104c(1);
                    if (this.f1491c != null) {
                        C0307d c0307d = this.f1490b;
                        String strM491r = c0307d.m843d().m491r();
                        String str = aVarM1123q.f2153b;
                        if (strM491r.startsWith(str)) {
                            C0305b[] c0305bArr = c0307d.f1627f;
                            for (int i2 = 0; i2 < c0305bArr.length; i2++) {
                                C0305b c0305b = c0305bArr[i2];
                                if (c0305b != null && c0305b.f1594c.m491r().startsWith(str)) {
                                    C0497w c0497w = new C0497w(i2, true);
                                    c0497w.f2380b = new C0129h(C0358b.f1980b[i2]);
                                    this.f1491c.f4c.m1091b(c0497w, false);
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    z3 = true;
                }
            } else {
                C0412c.m1108b(storageVolume);
            }
            z4 = true;
        }
        if (!z4 || (zArchiver = this.f1491c) == null) {
            return;
        }
        zArchiver.m748R(z3 ? 1 : 2);
    }

    /* JADX WARN: Code duplicated, block: B:79:0x01c2 A[Catch: Exception -> 0x0205, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01e0 A[Catch: Exception -> 0x0205, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01ec A[Catch: Exception -> 0x0205, LOOP:2: B:81:0x01ea->B:82:0x01ec, LOOP_END, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01f9 A[Catch: Exception -> 0x0205, LOOP:3: B:84:0x01f7->B:85:0x01f9, LOOP_END, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: e */
    public final void m785e(C0129h c0129h, boolean z2) {
        long jMo305v;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i2;
        boolean z3;
        int size;
        ArrayList arrayList3;
        int i3;
        ArrayList arrayList4;
        if (this.f1492d == null) {
            return;
        }
        if (C0079a.m266m().m278n(this.f1492d.m1202g().f1015c)) {
            C0079a c0079aM266m = C0079a.m266m();
            ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
            try {
                reentrantReadWriteLock.readLock().lock();
                InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
                jMo305v = interfaceC0082d == null ? -1L : interfaceC0082d.mo305v();
                reentrantReadWriteLock.readLock().unlock();
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } else {
            jMo305v = 0;
        }
        C0449a c0449a = this.f1492d;
        InterfaceC0316c interfaceC0316c = this.f1495g.f1616a.get();
        if (interfaceC0316c == null || !c0449a.m1202g().m480g()) {
            return;
        }
        int iM1203h = c0449a.m1203h();
        C0129h c0129hM1202g = c0449a.m1202g();
        String strM97y = C0015d.m97y(c0129hM1202g.f1015c);
        ArrayList arrayList5 = new ArrayList(iM1203h);
        for (int i4 = 0; i4 < iM1203h; i4++) {
            arrayList5.add(strM97y);
        }
        StringBuilder sb = new StringBuilder();
        if (C0015d.m53O(strM97y, false)) {
            int iM1030a = ((jMo305v > 3221225472L ? 1 : (jMo305v == 3221225472L ? 0 : -1)) > 0) != false ? 1 : C0358b.m1030a();
            if (iM1030a > 0) {
                sb.append("\\-mmt=");
                sb.append(iM1030a);
            }
        }
        if (C0070h.m253d().m257e(strM97y)) {
            sb.append("\\-p");
            sb.append(C0070h.m253d().m256c(true));
        }
        String string = sb.toString();
        C0129h c0129h2 = c0449a.f2257b;
        if ((c0129h2 != null) == true) {
            ArrayList arrayList6 = new ArrayList(1);
            ArrayList arrayList7 = new ArrayList(1);
            String strM65a0 = C0015d.m65a0(c0449a.m1202g().f1017e);
            StringBuilder sb2 = new StringBuilder();
            if (strM65a0.isEmpty()) {
                arrayList7.add(string);
            } else {
                arrayList7.add("-z" + strM65a0 + string);
                strM65a0 = strM65a0.concat("/");
            }
            for (int i5 = 0; i5 < iM1203h; i5++) {
                try {
                    sb2.append('\\');
                    sb2.append(strM65a0);
                    sb2.append(c0449a.m1197b(i5));
                } catch (OutOfMemoryError unused) {
                    ZApp.m726j("File list is too big");
                    return;
                }
            }
            arrayList6.add(sb2.toString());
            arrayList2 = arrayList6;
            arrayList = arrayList7;
        } else {
            ArrayList arrayList8 = new ArrayList(iM1203h);
            arrayList = new ArrayList(iM1203h);
            for (int i6 = 0; i6 < iM1203h; i6++) {
                String strM1197b = c0449a.m1197b(i6);
                String strM65a1 = C0015d.m65a0((c0129h2 == null ? ((C0048f) c0449a.f2256a.get(i6)).f365k : c0129h2).f1017e);
                if (strM65a1.isEmpty()) {
                    arrayList8.add("\\" + strM1197b);
                    arrayList.add(string);
                } else {
                    arrayList8.add("\\" + strM65a1 + '/' + strM1197b);
                    StringBuilder sb3 = new StringBuilder("-z");
                    sb3.append(strM65a1);
                    sb3.append(string);
                    arrayList.add(sb3.toString());
                }
            }
            arrayList2 = arrayList8;
        }
        try {
            if (!z2) {
                i2 = 0;
                if (C0306c.m835f(c0129h, true) || C0306c.m835f(c0129hM1202g, false)) {
                    z3 = true;
                }
                if (arrayList2.size() == 1) {
                    interfaceC0316c.ArchiveExtract((String) arrayList5.get(i2), c0129hM1202g, (String) arrayList.get(i2), (String) arrayList2.get(i2), c0129h, z3 ? 1 : 0);
                    return;
                }
                size = arrayList.size();
                arrayList3 = new ArrayList(iM1203h);
                for (i3 = i2; i3 < size; i3++) {
                    arrayList3.add(c0129h);
                }
                arrayList4 = new ArrayList(iM1203h);
                while (i2 < size) {
                    arrayList4.add(c0129hM1202g);
                    i2++;
                }
                interfaceC0316c.ArchiveExtractMulti(arrayList5, arrayList4, arrayList, arrayList2, arrayList3, z3 ? 1 : 0);
                return;
            }
            i2 = 0;
            if (arrayList2.size() == 1) {
                interfaceC0316c.ArchiveExtract((String) arrayList5.get(i2), c0129hM1202g, (String) arrayList.get(i2), (String) arrayList2.get(i2), c0129h, z3 ? 1 : 0);
                return;
            }
            size = arrayList.size();
            arrayList3 = new ArrayList(iM1203h);
            while (i3 < size) {
                arrayList3.add(c0129h);
            }
            arrayList4 = new ArrayList(iM1203h);
            while (i2 < size) {
                arrayList4.add(c0129hM1202g);
                i2++;
            }
            interfaceC0316c.ArchiveExtractMulti(arrayList5, arrayList4, arrayList, arrayList2, arrayList3, z3 ? 1 : 0);
            return;
        } catch (Exception unused2) {
            return;
        }
        z3 = z2;
    }

    /* JADX INFO: renamed from: f */
    public final void m786f(String str, boolean z2) {
        C0449a c0449a;
        String str2;
        if (this.f1491c == null || (c0449a = this.f1492d) == null) {
            return;
        }
        C0129h c0129hM1202g = c0449a.m1202g();
        if (c0129hM1202g.m488o()) {
            StringBuilder sb = new StringBuilder();
            if (this.f1492d.m1203h() == 1) {
                str2 = this.f1492d.m1197b(0) + "." + str;
            } else {
                str2 = c0129hM1202g.m478e() + "." + str;
            }
            String str3 = str2;
            if (str.equals("zip")) {
                sb.append("\\-mx=");
                sb.append((C0358b.f1984f & 983040) >> 16);
            } else if (str.equals("7z")) {
                sb.append("\\-mx=");
                sb.append((C0358b.f1984f & 61440) >> 12);
                C0015d.m72f(sb, (C0358b.f1984f & 61440) >> 12, C0358b.m1035f(2));
            }
            m788h(str, sb.toString(), str3, z2, (byte) 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:89:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d7 A[Catch: Exception -> 0x020c, TryCatch #0 {Exception -> 0x020c, blocks: (B:90:0x01d3, B:92:0x01d7, B:94:0x01db, B:96:0x01e2, B:98:0x01f2, B:100:0x0209), top: B:103:0x01d3 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01db A[Catch: Exception -> 0x020c, TryCatch #0 {Exception -> 0x020c, blocks: (B:90:0x01d3, B:92:0x01d7, B:94:0x01db, B:96:0x01e2, B:98:0x01f2, B:100:0x0209), top: B:103:0x01d3 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f2 A[Catch: Exception -> 0x020c, TryCatch #0 {Exception -> 0x020c, blocks: (B:90:0x01d3, B:92:0x01d7, B:94:0x01db, B:96:0x01e2, B:98:0x01f2, B:100:0x0209), top: B:103:0x01d3 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0208  */
    /* JADX INFO: renamed from: g */
    public final void m787g(C0306c.a aVar) {
        int i2;
        C0129h c0129hM1202g;
        boolean zContains;
        int i3;
        C0129h c0129h;
        C0449a c0449a = this.f1492d;
        if (c0449a == null || !c0449a.m1202g().m488o()) {
            return;
        }
        String strM478e = aVar.f1617a.m478e();
        boolean z2 = this.f1492d.f2256a.get(0) instanceof C0048f;
        C0307d c0307d = this.f1490b;
        C0129h c0129hM843d = z2 ? c0307d.m843d() : this.f1492d.m1202g();
        C0129h c0129hM843d2 = c0307d.m843d();
        C0129h c0129h2 = aVar.f1617a;
        if (c0129hM843d2.m477d(c0129h2.m479f()) ? c0307d.m842c().f1608q.m172e(c0129h2.m478e()) : AbstractC0127f.m462e(c0129h2)) {
            byte b2 = aVar.f1621e;
            if (b2 == 0) {
                ZArchiver zArchiver = this.f1491c;
                if (zArchiver == null) {
                    return;
                }
                DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(2, this.f1491c, zArchiver.getString(R.string.MES_OVERWRITE_ARCHIVE).replace("%1", strM478e), c0307d);
                dialogInterfaceOnCancelListenerC0113w.m361p(17);
                dialogInterfaceOnCancelListenerC0113w.f738b = c0307d.f1624c;
                dialogInterfaceOnCancelListenerC0113w.m360n(0, aVar);
                dialogInterfaceOnCancelListenerC0113w.m360n(1, c0129h2);
                dialogInterfaceOnCancelListenerC0113w.m381r();
                return;
            }
            if (b2 == 1 || b2 == 2) {
                if (C0079a.m266m().m278n(c0129h2.f1015c)) {
                    C0079a.m266m().m267a();
                }
                i2 = aVar.f1621e != 2 ? 0 : 2;
            }
        }
        C0449a c0449a2 = this.f1492d;
        InterfaceC0316c interfaceC0316c = this.f1495g.f1616a.get();
        if (interfaceC0316c == null) {
            return;
        }
        boolean z3 = C0306c.m835f(c0129h2, true) || C0306c.m835f(c0129hM843d, false);
        StringBuilder sb = new StringBuilder("-t");
        String str = aVar.f1618b;
        sb.append(str);
        String str2 = aVar.f1619c;
        sb.append(str2);
        int iM1203h = c0449a2.m1203h();
        ArrayList arrayList = new ArrayList(iM1203h);
        try {
            if (!c0449a2.m1201f()) {
                C0129h c0129h3 = c0449a2.f2257b;
                if (c0129h3 != null) {
                    for (int i4 = 0; i4 < iM1203h; i4++) {
                        arrayList.add(c0449a2.m1197b(i4));
                    }
                    c0129hM1202g = c0449a2.m1202g();
                } else {
                    int length = c0129hM843d.m491r().length();
                    int i5 = 0;
                    while (i5 < iM1203h) {
                        String strM491r = (c0129h3 == null ? ((C0048f) c0449a2.f2256a.get(i5)).f365k : c0129h3).m491r();
                        C0129h c0129h4 = c0129hM843d;
                        if (strM491r.length() >= length) {
                            StringBuilder sb2 = new StringBuilder();
                            if (strM491r.length() == length) {
                                sb2.append("./");
                            } else {
                                sb2.append("./");
                                sb2.append(strM491r.substring(length + 1));
                                sb2.append("/");
                            }
                            sb2.append(c0449a2.m1197b(i5));
                            arrayList.add(sb2.toString());
                        }
                        i5++;
                        c0129hM843d = c0129h4;
                        c0129h3 = c0129h3;
                        iM1203h = iM1203h;
                    }
                }
                zContains = str2.contains("-m0=LZMA2");
                if (!zContains || ((str.startsWith("t") && !str.equals("tar")) || c0129hM1202g.m486m())) {
                    sb.append("\\-mmt=1");
                } else if (C0015d.m53O("name.".concat(str), true) && C0358b.m1030a() > 0) {
                    sb.append("\\-mmt=");
                    sb.append(C0358b.m1030a());
                }
                if (zContains) {
                    C0079a.m266m().m267a();
                }
                if (aVar.f1620d) {
                    i2 |= 4;
                }
                if (z3) {
                    i3 = i2 | 1;
                } else {
                    i3 = i2;
                }
                String strM478e2 = c0129h2.m478e();
                C0129h c0129h5 = aVar.f1617a;
                String string = sb.toString();
                if (c0129hM1202g.m487n()) {
                    C0129h c0129h6 = new C0129h(c0129hM1202g);
                    String str3 = c0129h6.f1015c;
                    c0129h6.f1015c = str3.substring(0, str3.length() - 3);
                    c0129h = c0129h6;
                } else {
                    c0129h = c0129hM1202g;
                }
                interfaceC0316c.ArchiveCompress(strM478e2, c0129h5, string, arrayList, c0129h, i3);
                return;
            }
            for (int i6 = 0; i6 < iM1203h; i6++) {
                arrayList.add(c0449a2.m1196a(i6).m491r());
            }
            if (aVar.f1620d) {
                i2 |= 4;
            }
            if (z3) {
                i3 = i2 | 1;
            } else {
                i3 = i2;
            }
            String strM478e3 = c0129h2.m478e();
            C0129h c0129h7 = aVar.f1617a;
            String string2 = sb.toString();
            if (c0129hM1202g.m487n()) {
                C0129h c0129h8 = new C0129h(c0129hM1202g);
                String str4 = c0129h8.f1015c;
                c0129h8.f1015c = str4.substring(0, str4.length() - 3);
                c0129h = c0129h8;
            } else {
                c0129h = c0129hM1202g;
            }
            interfaceC0316c.ArchiveCompress(strM478e3, c0129h7, string2, arrayList, c0129h, i3);
            return;
        } catch (Exception unused) {
            return;
        }
        c0129hM1202g = c0129hM843d;
        zContains = str2.contains("-m0=LZMA2");
        if (zContains) {
            sb.append("\\-mmt=1");
        } else {
            sb.append("\\-mmt=1");
        }
        if (zContains) {
            C0079a.m266m().m267a();
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m788h(String str, String str2, String str3, boolean z2, byte b2) {
        C0129h c0129h;
        C0129h c0129h2;
        C0129h c0129hM1202g;
        if (this.f1492d == null) {
            return;
        }
        if (str3.startsWith("/")) {
            c0129h2 = new C0129h(str3);
        } else {
            String str4 = C0358b.f1979a;
            if (str4 == null) {
                boolean z3 = this.f1492d.f2256a.get(0) instanceof C0048f;
                C0307d c0307d = this.f1490b;
                if (z3) {
                    c0129hM1202g = c0307d.m843d();
                } else {
                    c0129hM1202g = this.f1492d.m1202g();
                    if (c0129hM1202g.m487n()) {
                        c0129hM1202g = c0307d.m843d().m479f();
                    }
                }
                if (c0129hM1202g == null) {
                    return;
                } else {
                    c0129h = new C0129h(str3, c0129hM1202g);
                }
            } else {
                c0129h = new C0129h(C0015d.m78i(str4, str3));
            }
            c0129h2 = c0129h;
            if (m790k(this.f1491c, c0129h2)) {
                return;
            }
        }
        m787g(new C0306c.a(c0129h2, str, str2, z2, b2));
    }

    /* JADX INFO: renamed from: i */
    public final void m789i() {
        ArrayList<AbstractC0099i> arrayList;
        synchronized (this.f1490b.f1625d) {
            arrayList = new ArrayList(this.f1490b.f1625d);
        }
        for (AbstractC0099i abstractC0099i : arrayList) {
            try {
                int i2 = abstractC0099i.f739c;
                if (i2 >= 0) {
                    InterfaceC0316c interfaceC0316c = this.f1495g.f1616a.get();
                    if (interfaceC0316c == null) {
                        throw new RemoteException();
                    }
                    if ((interfaceC0316c.GetStatusTask(i2) & 1048576) == 1048576) {
                        abstractC0099i.mo337d();
                    } else if (abstractC0099i.mo338k() == 2) {
                        DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a0 = (DialogInterfaceOnCancelListenerC0089a0) abstractC0099i;
                        InterfaceC0316c interfaceC0316c2 = this.f1495g.f1616a.get();
                        if (interfaceC0316c2 == null) {
                            throw new RemoteException();
                        }
                        String strGetProgText = interfaceC0316c2.GetProgText(i2);
                        if (dialogInterfaceOnCancelListenerC0089a0.f689g != null) {
                            dialogInterfaceOnCancelListenerC0089a0.f692j.setText(strGetProgText);
                        }
                        InterfaceC0316c interfaceC0316c3 = this.f1495g.f1616a.get();
                        if (interfaceC0316c3 == null) {
                            throw new RemoteException();
                        }
                        dialogInterfaceOnCancelListenerC0089a0.m340r(interfaceC0316c3.GetProgPercent(i2), -1);
                    } else {
                        continue;
                    }
                }
            } catch (DeadObjectException unused) {
                abstractC0099i.mo337d();
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final boolean m790k(Context context, C0129h c0129h) {
        C0412c.a aVarM1111e;
        C0412c.a aVarM1112f;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 33 && c0129h.m486m()) {
            String[] strArrM856g = SAF.m856g(c0129h.f1015c);
            if (strArrM856g != null && strArrM856g[1] != null && !"primary".equals(strArrM856g[0]) && strArrM856g[1].startsWith("Android/") && (aVarM1112f = C0412c.m1112f(strArrM856g[0])) != null && !aVarM1112f.m1129d("Android/data/ru.zdevs.zarchiver")) {
                context.getExternalCacheDirs();
                C0307d c0307d = this.f1490b;
                DialogInterfaceOnClickListenerC0109s.m377r(c0307d, context, 0, c0307d.f1626e, aVarM1112f, 3, "Android/data/ru.zdevs.zarchiver");
                return true;
            }
        } else if (i2 >= 30 && i2 <= 32 && c0129h.m483j()) {
            String str = c0129h.f1015c;
            if ((str.endsWith("/Android/data") || str.endsWith("/Android/obb")) && (aVarM1111e = C0412c.m1111e(str)) != null) {
                String strM1127b = aVarM1111e.m1127b(str);
                if (!aVarM1111e.m1129d(strM1127b)) {
                    C0307d c0307d2 = this.f1490b;
                    DialogInterfaceOnClickListenerC0109s.m377r(c0307d2, context, 0, c0307d2.f1626e, aVarM1111e, 2, strM1127b);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: l */
    public final boolean m791l(Context context, int i2) {
        C0307d c0307d = this.f1490b;
        byte bM844e = c0307d.m844e();
        if (bM844e == 2) {
            ZApp.m725i(R.string.MES_PATH_HAS_RESTRICTION);
            return true;
        }
        if (bM844e == 1) {
            return m790k(context, c0307d.m843d());
        }
        if (!c0307d.m845f(3)) {
            if (!c0307d.m845f(64)) {
                return !c0307d.m845f(16);
            }
            if (!C0015d.m49K(AbstractC0126e.m452c(c0307d.m843d()), 2) && (i2 == 1 || i2 == 4 || i2 == 7 || i2 == 6 || i2 == 9)) {
                return false;
            }
            ZApp.m725i(R.string.MES_PATH_READ_ONLY);
            return true;
        }
        if (!C0358b.m1038i(c0307d.m843d().f1015c)) {
            ZApp.m725i(R.string.MES_PATH_READ_ONLY);
            return true;
        }
        if (bM844e != 3) {
            ZApp.m725i(R.string.MES_NEED_REMOUNT);
            return true;
        }
        C0129h c0129hM843d = c0307d.m843d();
        C0287a c0287a = c0307d.f1624c;
        c0287a.getClass();
        if (C0358b.m1037h(64) && c0129hM843d.m483j() && C0358b.m1037h(32)) {
            String str = c0129hM843d.f1015c;
            if (!str.startsWith("/storage/usb") && !str.startsWith("/storage/sdcard") && !str.startsWith("/storage/ExtSd") && !str.startsWith("/sdcard") && !str.startsWith("/mnt/sdcard") && !str.startsWith("/mnt/media_rw") && !C0415f.m1137e(str)) {
                DialogInterfaceOnClickListenerC0091b0 dialogInterfaceOnClickListenerC0091b0 = new DialogInterfaceOnClickListenerC0091b0(c0287a.f1490b, context);
                if (i2 != 0) {
                    dialogInterfaceOnClickListenerC0091b0.m360n(1, "" + i2);
                }
                dialogInterfaceOnClickListenerC0091b0.f738b = c0287a;
                AlertDialog alertDialog = dialogInterfaceOnClickListenerC0091b0.f704g;
                if (alertDialog == null) {
                    return true;
                }
                AbstractC0099i.m354q(alertDialog);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: m */
    public final boolean m792m(Context context, boolean z2) {
        AbstractViewOnClickListenerC0050h listAdapter;
        C0449a c0449a;
        C0307d c0307d = this.f1490b;
        char c2 = c0307d.f1622a;
        if (c2 == 0) {
            return true;
        }
        if (z2) {
            if (c2 != '\t') {
                if (c2 != 17) {
                    if (c2 != '\"') {
                        if (c2 == 'A') {
                            if (c0307d.m845f(4)) {
                                if (!C0015d.m52N(1, c0307d.m843d().f1015c) || ((c0449a = this.f1493e) != null && !c0449a.m1202g().m488o())) {
                                    ZApp.m725i(R.string.MES_DONT_SUPPORT_EDIT);
                                    return false;
                                }
                            } else if (m791l(context, 1)) {
                                return false;
                            }
                            if (context instanceof ZArchiver) {
                                ((ZArchiver) context).m734D(R.id.bPast);
                            }
                        }
                    } else if ((context instanceof ZArchiver) && (listAdapter = ((ZArchiver) context).f1389k.getListAdapter()) != null && listAdapter.mo176c() != R.layout.item_file_search) {
                        try {
                            C0449a c0449aM820a = c0307d.f1627f[listAdapter.f372g].m820a(listAdapter.m191d());
                            this.f1492d = c0449aM820a;
                            c0449aM820a.m1203h();
                        } catch (Exception unused) {
                        }
                        InterfaceC0139j interfaceC0139j = this.f1494f;
                        if (interfaceC0139j != null && interfaceC0139j.type() == 1) {
                            m787g((C0306c.a) this.f1494f);
                        }
                    }
                } else {
                    if (m791l(context, 8)) {
                        return false;
                    }
                    m785e(c0307d.m843d(), c0307d.m845f(2));
                }
            } else {
                if (this.f1492d == null || m791l(context, 2)) {
                    return false;
                }
                this.f1495g.m837b(this.f1492d, c0307d.m843d(), this.f1492d.m1203h() > 1, c0307d.m845f(2));
            }
        }
        c0307d.m846g((char) 0);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0264  */
    /* JADX WARN: Code duplicated, block: B:146:0x02b2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: n */
    public final void m793n(ZArchiver zArchiver, DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v, int i2) {
        C0449a c0449a;
        boolean z2;
        C0449a c0449a2;
        C0449a c0449a3;
        String strM478e;
        int i3;
        InterfaceC0316c interfaceC0316c;
        C0449a c0449a4;
        int iM79i0;
        C0023e c0023eM1024f;
        if (zArchiver == null || zArchiver.isFinishing()) {
            return;
        }
        C0307d c0307d = this.f1490b;
        if (i2 != 56) {
            if (i2 != 57) {
                if (i2 != 81 && i2 != 82) {
                    int i4 = 20;
                    C0306c c0306c = this.f1495g;
                    switch (i2) {
                        case 1:
                            c0449a2 = this.f1492d;
                            if (c0449a2 == null && c0449a2.m1203h() == 1 && c0307d.m845f(19)) {
                                C0129h c0129hM40B = C0015d.m40B(this.f1492d.m1196a(0));
                                C0079a.m266m().m268b(C0079a.m266m().m277l());
                                zArchiver.m742L(c0307d.f1626e, 128, c0129hM40B);
                                return;
                            }
                            return;
                        case 2:
                        case 3:
                        case 4:
                            c0449a3 = this.f1492d;
                            if (c0449a3 == null && c0449a3.m1203h() == 1) {
                                C0305b c0305bM842c = c0307d.m842c();
                                m783j(zArchiver, this.f1492d.m1196a(0), this.f1492d.f2256a.get(0).f355d, this.f1492d.f2256a.get(0).f357f == 28, i2 != 3 ? 8 : 0, c0305bM842c.f1599h, c0305bM842c.m825f());
                                return;
                            }
                            return;
                        case 5:
                            if (c0307d.m845f(4)) {
                                zArchiver.m736F((char) 17);
                                return;
                            } else {
                                zArchiver.m736F('\t');
                                return;
                            }
                        case 6:
                            if (!c0307d.m845f(19) || this.f1492d == null || m791l(zArchiver, 2)) {
                                return;
                            }
                            c0306c.m837b(this.f1492d, c0307d.m843d(), false, c0307d.m845f(2));
                            return;
                        case 7:
                            if (!c0307d.m845f(19) || this.f1492d == null || m791l(zArchiver, 3)) {
                                return;
                            }
                            c0306c.m837b(this.f1492d, c0307d.m843d(), true, c0307d.m845f(2));
                            return;
                        case 8:
                            C0449a c0449a5 = this.f1492d;
                            if (c0449a5 == null) {
                                return;
                            }
                            C0129h c0129hM1202g = c0449a5.m1202g();
                            if (c0129hM1202g.m488o()) {
                                if (C0415f.m1134b(c0129hM1202g) == 2) {
                                    i4 = 4 | (C0415f.m1139g(c0129hM1202g.f1015c) != 1 ? 16 : 0);
                                } else if (!c0129hM1202g.m487n()) {
                                    i4 = 0;
                                }
                                if (this.f1492d.m1203h() == 1) {
                                    strM478e = this.f1492d.m1197b(0);
                                    if (this.f1492d.m1200e(0)) {
                                        i4 |= 1;
                                    }
                                    i3 = i4 | 2;
                                } else {
                                    strM478e = c0307d.m843d().m478e();
                                    if ("/".equals(strM478e)) {
                                        strM478e = "root";
                                    }
                                    i3 = i4 | 1;
                                }
                                DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h = new DialogInterfaceOnCancelListenerC0098h(i3, zArchiver, strM478e, c0307d);
                                dialogInterfaceOnCancelListenerC0098h.m361p(10);
                                dialogInterfaceOnCancelListenerC0098h.f738b = this;
                                AlertDialog alertDialog = dialogInterfaceOnCancelListenerC0098h.f720g;
                                if (alertDialog != null) {
                                    AbstractC0099i.m354q(alertDialog);
                                    return;
                                }
                                return;
                            }
                            return;
                        case 9:
                        case 10:
                            if (!C0358b.m1041l(1024)) {
                                m786f(i2 != 9 ? "7z" : "zip", false);
                                return;
                            }
                            DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(1, zArchiver, zArchiver.getString(R.string.MES_REMOTHE_AFTER_COMPRESS), c0307d);
                            dialogInterfaceOnCancelListenerC0113w.m361p(i2 == 9 ? 13 : 14);
                            dialogInterfaceOnCancelListenerC0113w.f738b = this;
                            dialogInterfaceOnCancelListenerC0113w.f737a = this;
                            dialogInterfaceOnCancelListenerC0113w.m381r();
                            return;
                        case 11:
                            C0449a c0449a6 = this.f1492d;
                            if (c0449a6 == null || (interfaceC0316c = c0306c.f1616a.get()) == null || !c0449a6.m1202g().m488o()) {
                                return;
                            }
                            int iM1203h = c0449a6.m1203h();
                            ArrayList arrayList = new ArrayList(iM1203h);
                            ArrayList arrayList2 = new ArrayList(iM1203h);
                            ArrayList arrayList3 = new ArrayList(iM1203h);
                            for (int i5 = 0; i5 < iM1203h; i5++) {
                                String strM1197b = c0449a6.m1197b(i5);
                                C0129h c0129hM1196a = c0449a6.m1196a(i5);
                                String str = (!C0015d.m53O(strM1197b, false) || C0358b.m1030a() <= 0) ? "" : "\\-mmt=" + C0358b.m1030a();
                                if (C0070h.m253d().m257e(strM1197b)) {
                                    str = str + "\\-p" + C0070h.m253d().m256c(true);
                                }
                                arrayList.add(strM1197b);
                                arrayList2.add(c0129hM1196a);
                                arrayList3.add(str);
                            }
                            try {
                                if (iM1203h == 1) {
                                    interfaceC0316c.ArchiveTest(c0449a6.m1197b(0), (C0129h) arrayList2.get(0), (String) arrayList3.get(0));
                                } else {
                                    interfaceC0316c.ArchiveTestMulti(arrayList, arrayList2, arrayList3);
                                }
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        case 12:
                            C0449a c0449a7 = this.f1492d;
                            if (c0449a7 == null) {
                                return;
                            }
                            if (c0449a7.m1203h() > 1) {
                                m782d(zArchiver, null, this.f1492d.m1202g(), this.f1492d.m1204i());
                                return;
                            }
                            C0129h c0129hM1196a2 = this.f1492d.m1196a(0);
                            if (c0129hM1196a2.m480g()) {
                                c0306c.m839e(c0129hM1196a2, 128);
                                return;
                            } else {
                                if (c0129hM1196a2.m488o()) {
                                    byte bM43E = C0015d.m43E(c0129hM1196a2.m478e());
                                    if (((bM43E == 6 || bM43E == 20) ? 1 : 0) != 0) {
                                        m782d(zArchiver, c0129hM1196a2, null, null);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        default:
                            switch (i2) {
                                case 14:
                                    zArchiver.m734D(R.id.bSelectAll);
                                    return;
                                case 15:
                                    zArchiver.m734D(R.id.bSelectClear);
                                    return;
                                case 16:
                                    zArchiver.m734D(R.id.bSelectInvert);
                                    return;
                                default:
                                    switch (i2) {
                                        case 18:
                                            c0449a2 = this.f1492d;
                                            if (c0449a2 == null) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        case 19:
                                            c0449a3 = this.f1492d;
                                            if (c0449a3 == null) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        case 20:
                                            C0449a c0449a8 = this.f1492d;
                                            if (c0449a8 == null) {
                                                return;
                                            }
                                            new C0476l0(c0449a8).m1098g(null, zArchiver.f4c);
                                            return;
                                        default:
                                            switch (i2) {
                                                case 22:
                                                    C0449a c0449a9 = this.f1492d;
                                                    if (c0449a9 == null) {
                                                        return;
                                                    }
                                                    boolean z3 = c0449a9.m1203h() == 1 && this.f1492d.m1200e(0);
                                                    C0449a c0449a10 = this.f1492d;
                                                    ((c0449a10.f2257b != null ? 1 : 0) != 0 ? new DialogInterfaceOnCancelListenerC0105o(this.f1490b, zArchiver, c0449a10.m1202g(), this.f1492d.m1204i(), z3) : new DialogInterfaceOnCancelListenerC0105o(this.f1490b, zArchiver, c0449a10.m1198c(), this.f1492d.m1204i(), z3)).m368u();
                                                    return;
                                                case 23:
                                                    if ((c0307d.m844e() != 2 || (c0449a4 = this.f1492d) == null || c0449a4.m1203h() != 1) && m791l(zArchiver, 4)) {
                                                        return;
                                                    }
                                                    break;
                                                case 24:
                                                    zArchiver.m734D(R.id.bCopy);
                                                    return;
                                                case 25:
                                                    zArchiver.m734D(R.id.bCut);
                                                    return;
                                                case 26:
                                                    zArchiver.m734D(R.id.bPast);
                                                    return;
                                                case 27:
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 70:
                                                            C0449a c0449a11 = this.f1492d;
                                                            if (c0449a11 == null || c0449a11.m1203h() != 1) {
                                                                return;
                                                            }
                                                            C0129h c0129hM1196a3 = this.f1492d.m1196a(0);
                                                            if (c0129hM1196a3.m488o()) {
                                                                DialogInterfaceOnCancelListenerC0088a dialogInterfaceOnCancelListenerC0088a = new DialogInterfaceOnCancelListenerC0088a(this.f1490b, zArchiver, 1000, this.f1492d.m1197b(0), new C0129h(c0129hM1196a3.m491r()));
                                                                dialogInterfaceOnCancelListenerC0088a.m361p(21);
                                                                dialogInterfaceOnCancelListenerC0088a.f738b = this;
                                                                AlertDialog alertDialog2 = dialogInterfaceOnCancelListenerC0088a.f684g;
                                                                if (alertDialog2 != null) {
                                                                    AbstractC0099i.m354q(alertDialog2);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            return;
                                                        case 71:
                                                            if (dialogInterfaceOnCancelListenerC0112v != null) {
                                                                int iM79i1 = C0015d.m79i0(-1, dialogInterfaceOnCancelListenerC0112v.m358i(0));
                                                                ReentrantReadWriteLock reentrantReadWriteLock = C0357a.f1973b;
                                                                if (C0357a.m1026h(iM79i1)) {
                                                                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(zArchiver);
                                                                    String string = defaultSharedPreferences.getString("sFavorite", null);
                                                                    if (!C0385h.m1081e(string)) {
                                                                        try {
                                                                            reentrantReadWriteLock.writeLock().lock();
                                                                            C0023e c0023eRemove = C0357a.f1972a.remove(iM79i1);
                                                                            reentrantReadWriteLock.writeLock().unlock();
                                                                            String[] strArrM1084h = C0385h.m1084h(string, '|');
                                                                            StringBuilder sb = new StringBuilder();
                                                                            for (String str2 : strArrM1084h) {
                                                                                C0023e c0023eM124a = C0023e.m124a(0, str2);
                                                                                if (c0023eM124a != null && !c0023eM124a.f186c.equals(c0023eRemove.f186c)) {
                                                                                    sb.append(str2);
                                                                                    sb.append('|');
                                                                                }
                                                                            }
                                                                            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                                                                            editorEdit.putString("sFavorite", sb.toString());
                                                                            editorEdit.apply();
                                                                        } catch (Throwable th) {
                                                                            reentrantReadWriteLock.writeLock().unlock();
                                                                            throw th;
                                                                        }
                                                                    }
                                                                }
                                                                zArchiver.m748R(2);
                                                                return;
                                                            }
                                                            return;
                                                        case 72:
                                                            if (dialogInterfaceOnCancelListenerC0112v == null || (c0023eM1024f = C0357a.m1024f((iM79i0 = C0015d.m79i0(-1, dialogInterfaceOnCancelListenerC0112v.m358i(0))))) == null) {
                                                                return;
                                                            }
                                                            DialogInterfaceOnCancelListenerC0088a dialogInterfaceOnCancelListenerC0088a2 = new DialogInterfaceOnCancelListenerC0088a(this.f1490b, zArchiver, c0023eM1024f.f184a, c0023eM1024f.f185b, c0023eM1024f.f186c);
                                                            dialogInterfaceOnCancelListenerC0088a2.m361p(22);
                                                            dialogInterfaceOnCancelListenerC0088a2.m360n(0, Integer.toString(iM79i0));
                                                            dialogInterfaceOnCancelListenerC0088a2.f738b = this;
                                                            AlertDialog alertDialog3 = dialogInterfaceOnCancelListenerC0088a2.f684g;
                                                            if (alertDialog3 != null) {
                                                                AbstractC0099i.m354q(alertDialog3);
                                                                return;
                                                            }
                                                            return;
                                                        case 73:
                                                            if (dialogInterfaceOnCancelListenerC0112v != null) {
                                                                int iM79i2 = C0015d.m79i0(-1, dialogInterfaceOnCancelListenerC0112v.m358i(0));
                                                                ReentrantReadWriteLock reentrantReadWriteLock2 = C0357a.f1973b;
                                                                if (C0357a.m1025g(iM79i2)) {
                                                                    SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(zArchiver);
                                                                    String string2 = defaultSharedPreferences2.getString("sFavorite", null);
                                                                    if (!C0385h.m1081e(string2)) {
                                                                        try {
                                                                            reentrantReadWriteLock2.writeLock().lock();
                                                                            ArrayList<C0023e> arrayList4 = C0357a.f1972a;
                                                                            C0023e c0023eRemove2 = arrayList4.remove(iM79i2);
                                                                            arrayList4.add(iM79i2 - 1, c0023eRemove2);
                                                                            reentrantReadWriteLock2.writeLock().unlock();
                                                                            String[] strArrM1084h2 = C0385h.m1084h(string2, '|');
                                                                            StringBuilder sb2 = new StringBuilder();
                                                                            String str3 = null;
                                                                            for (String str4 : strArrM1084h2) {
                                                                                C0023e c0023eM124a2 = C0023e.m124a(0, str4);
                                                                                boolean z4 = c0023eM124a2 != null && c0023eM124a2.f186c.equals(c0023eRemove2.f186c);
                                                                                if (z4) {
                                                                                    sb2.append(str4);
                                                                                    sb2.append('|');
                                                                                }
                                                                                if (str3 != null) {
                                                                                    sb2.append(str3);
                                                                                    sb2.append('|');
                                                                                }
                                                                                str3 = z4 ? null : str4;
                                                                            }
                                                                            if (str3 != null) {
                                                                                sb2.append(str3);
                                                                                sb2.append('|');
                                                                            }
                                                                            SharedPreferences.Editor editorEdit2 = defaultSharedPreferences2.edit();
                                                                            editorEdit2.putString("sFavorite", sb2.toString());
                                                                            editorEdit2.apply();
                                                                        } catch (Throwable th2) {
                                                                            reentrantReadWriteLock2.writeLock().unlock();
                                                                            throw th2;
                                                                        }
                                                                    }
                                                                }
                                                                zArchiver.m748R(2);
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            switch (i2) {
                                                                case 90:
                                                                    zArchiver.m734D(R.id.bSettings);
                                                                    return;
                                                                case 91:
                                                                    zArchiver.m734D(R.id.bMultiSelect);
                                                                    return;
                                                                case 92:
                                                                case 93:
                                                                case 94:
                                                                    m792m(zArchiver, true);
                                                                    zArchiver.m2j();
                                                                    return;
                                                                case 95:
                                                                case 96:
                                                                    m792m(zArchiver, false);
                                                                    zArchiver.m2j();
                                                                    return;
                                                                case 97:
                                                                    zArchiver.m734D(R.id.bExit);
                                                                    return;
                                                                case 98:
                                                                    if (this.f1492d == null || m791l(zArchiver, 5)) {
                                                                        return;
                                                                    }
                                                                    C0449a c0449a12 = this.f1492d;
                                                                    DialogInterfaceOnClickListenerC0114x dialogInterfaceOnClickListenerC0114x = (c0449a12.f2257b != null ? 1 : 0) != 0 ? new DialogInterfaceOnClickListenerC0114x(c0307d, zArchiver, c0449a12.m1202g(), this.f1492d.m1204i()) : new DialogInterfaceOnClickListenerC0114x(c0307d, zArchiver, c0449a12.m1198c(), this.f1492d.m1204i());
                                                                    dialogInterfaceOnClickListenerC0114x.f738b = this;
                                                                    AlertDialog alertDialog4 = dialogInterfaceOnClickListenerC0114x.f838g;
                                                                    if (alertDialog4 != null) {
                                                                        AbstractC0099i.m354q(alertDialog4);
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                    }
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    if (c0307d.m845f(4)) {
                        String str5 = c0307d.m843d().f1015c;
                        if (!C0015d.m52N(1, str5)) {
                            new DialogInterfaceOnCancelListenerC0113w(4, zArchiver, zArchiver.getString(R.string.MES_DONT_SUPPORT_EDIT), c0307d).m381r();
                            return;
                        }
                        String strM93u = C0015d.m93u(str5);
                        int i6 = (strM93u.equals("zip") || strM93u.equals("7z")) ? 1 : 0;
                        int i7 = C0015d.m93u(str5).equals("7z") ? 1 : C0015d.m93u(str5).equals("zip") ? 2 : 0;
                        if (i6 != 0) {
                            try {
                                z2 = (C0070h.m253d().m257e(str5) && C0070h.m253d().m258f(str5)) ? 0 : i6;
                            } catch (Exception unused2) {
                                z2 = i6;
                            }
                        } else {
                            z2 = i6;
                        }
                        DialogInterfaceOnCancelListenerC0106p dialogInterfaceOnCancelListenerC0106p = new DialogInterfaceOnCancelListenerC0106p(this.f1490b, zArchiver, i2 == 82 ? R.string.ADD_TTL_FOLDER : R.string.ADD_TTL_FILE, i2 == 82 ? 4 : 3, z2, i7);
                        dialogInterfaceOnCancelListenerC0106p.m361p(i2 != 82 ? 5 : 6);
                        dialogInterfaceOnCancelListenerC0106p.m376x();
                        dialogInterfaceOnCancelListenerC0106p.f738b = this;
                        return;
                    }
                    return;
                }
            }
            C0449a c0449a13 = this.f1492d;
            if (c0449a13 == null || c0449a13.m1203h() != 1) {
                return;
            }
            String strM1197b2 = this.f1492d.m1197b(0);
            if (c0307d.m844e() != 2 || (c0449a = this.f1492d) == null || c0449a.m1203h() != 1) {
                if (i2 == 57 || !m791l(zArchiver, 6)) {
                    DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m = new DialogInterfaceOnCancelListenerC0103m(this.f1490b, zArchiver, strM1197b2, R.string.REN_ENTER_NEW_NAME, 6);
                    dialogInterfaceOnCancelListenerC0103m.m361p(12);
                    AlertDialog alertDialog5 = dialogInterfaceOnCancelListenerC0103m.f752g;
                    if (alertDialog5 != null) {
                        AbstractC0099i.m354q(alertDialog5);
                    }
                    dialogInterfaceOnCancelListenerC0103m.m363s(strM1197b2);
                    int length = this.f1492d.m1200e(0) ? strM1197b2.length() : strM1197b2.lastIndexOf(".");
                    AlertDialog alertDialog6 = dialogInterfaceOnCancelListenerC0103m.f752g;
                    if (alertDialog6 != null && length > 0) {
                        ((EditText) alertDialog6.findViewById(R.id.edt_text)).setSelection(0, length);
                    }
                    dialogInterfaceOnCancelListenerC0103m.f738b = this;
                    return;
                }
                return;
            }
            ZArchiver zArchiver2 = this.f1491c;
            if (zArchiver2 != null) {
                if (!zArchiver2.m759x(c0307d.f1626e, c0307d.m843d().f1015c)) {
                    return;
                }
            }
            DialogInterfaceOnCancelListenerC0090b dialogInterfaceOnCancelListenerC0090b = new DialogInterfaceOnCancelListenerC0090b(c0307d, zArchiver, c0307d.m843d().f1015c);
            dialogInterfaceOnCancelListenerC0090b.m361p(12);
            AlertDialog alertDialog7 = dialogInterfaceOnCancelListenerC0090b.f694g;
            if (alertDialog7 != null && AbstractC0099i.m354q(alertDialog7)) {
                dialogInterfaceOnCancelListenerC0090b.f699l.m1090a(dialogInterfaceOnCancelListenerC0090b, null);
            }
            dialogInterfaceOnCancelListenerC0090b.f738b = this;
            dialogInterfaceOnCancelListenerC0090b.f696i = strM1197b2;
            dialogInterfaceOnCancelListenerC0090b.f697j = strM1197b2;
            AlertDialog alertDialog8 = dialogInterfaceOnCancelListenerC0090b.f694g;
            if (alertDialog8 != null) {
                ((EditText) alertDialog8.findViewById(R.id.edt_text)).setText(strM1197b2);
                return;
            }
            return;
        }
        C0449a c0449a14 = this.f1492d;
        if (c0449a14 == null) {
            return;
        }
        String[] strArrM1204i = c0449a14.m1204i();
        StringBuilder sb3 = new StringBuilder();
        for (String str6 : strArrM1204i) {
            if (sb3.length() != 0) {
                sb3.append(", ");
            }
            sb3.append(str6);
        }
        DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w2 = new DialogInterfaceOnCancelListenerC0113w(1, zArchiver, zArchiver.getString(R.string.MES_QUESTION_REMOVE).replace("%1", sb3.toString()), c0307d);
        dialogInterfaceOnCancelListenerC0113w2.m361p(3);
        dialogInterfaceOnCancelListenerC0113w2.f738b = this;
        dialogInterfaceOnCancelListenerC0113w2.f737a = this;
        dialogInterfaceOnCancelListenerC0113w2.m381r();
    }

    /* JADX INFO: renamed from: o */
    public final void m794o(ZArchiver zArchiver, InterfaceC0316c interfaceC0316c) {
        this.f1491c = zArchiver;
        C0306c c0306c = this.f1495g;
        c0306c.getClass();
        c0306c.f1616a = new WeakReference<>(interfaceC0316c);
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.a$b */
    public static class b implements InterfaceC0139j {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        public final String f1498a;

        /* JADX INFO: renamed from: b */
        public final String f1499b;

        /* JADX INFO: renamed from: c */
        public final Uri f1500c;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.a$b$a */
        public class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i2) {
                return new b[i2];
            }
        }

        public b(String str, String str2, Uri uri) {
            this.f1498a = str;
            this.f1499b = str2;
            this.f1500c = uri;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // p021g1.InterfaceC0139j
        public final int type() {
            return 2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f1498a);
            parcel.writeString(this.f1499b);
            parcel.writeString(this.f1500c.toString());
        }

        public b(Parcel parcel) {
            this.f1498a = parcel.readString();
            this.f1499b = parcel.readString();
            String string = parcel.readString();
            if (string != null) {
                this.f1500c = Uri.parse(string);
            } else {
                this.f1500c = null;
            }
        }
    }
}
