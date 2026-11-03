package ru.zdevs.zarchiver.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.storage.StorageManager;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.InvalidPropertiesFormatException;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p021g1.C0132c;
import p033m0.C0181d;
import p035n0.ProxyFileDescriptorCallbackC0196c;
import p047s0.C0358b;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: loaded from: classes.dex */
public final class FileProvider extends ContentProvider {

    /* JADX INFO: renamed from: a */
    public static final String[] f1650a = {"_display_name", "_size", "_data"};

    /* JADX INFO: renamed from: b */
    public static C0129h m881b(Uri uri) {
        String strSubstring = uri.getPath().substring(3);
        int iIndexOf = strSubstring.indexOf(47);
        String strSubstring2 = strSubstring.substring(0, iIndexOf);
        int i2 = iIndexOf + 1;
        int iIndexOf2 = strSubstring.indexOf(47, i2);
        return new C0129h("plugin", strSubstring.substring(iIndexOf2), strSubstring.substring(i2, iIndexOf2), strSubstring2);
    }

    /* JADX INFO: renamed from: c */
    public static Uri m882c(String str) {
        return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.external").path(str).build();
    }

    /* JADX INFO: renamed from: d */
    public static boolean m883d(Uri uri) {
        String path = uri.getPath();
        if (path != null) {
            return path.startsWith("/u/");
        }
        throw new IllegalStateException("Incorrect Uri");
    }

    /* JADX INFO: renamed from: a */
    public final File m884a(Uri uri) {
        if (getContext() == null) {
            throw new IllegalStateException("No Context attached");
        }
        String path = uri.getPath();
        if (path != null) {
            return new File(path);
        }
        throw new IllegalStateException("Incorrect Uri");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        if (m883d(uri)) {
            return 0;
        }
        return m884a(uri).delete() ? 1 : 0;
    }

    /* JADX INFO: renamed from: e */
    public final ParcelFileDescriptor m885e(int i2, String str, long j2, int i3) throws FileNotFoundException {
        try {
            int i4 = 268435456;
            ProxyFileDescriptorCallbackC0196c proxyFileDescriptorCallbackC0196c = new ProxyFileDescriptorCallbackC0196c(i3, str, j2, i2 == 268435456);
            StorageManager storageManager = (StorageManager) getContext().getSystemService("storage");
            if (i2 != 268435456) {
                i4 = 536870912;
            }
            HandlerThread handlerThread = new HandlerThread("ShellInputCallback");
            proxyFileDescriptorCallbackC0196c.f1199g = handlerThread;
            handlerThread.start();
            return storageManager.openProxyFileDescriptor(i4, proxyFileDescriptorCallbackC0196c, new Handler(proxyFileDescriptorCallbackC0196c.f1199g.getLooper()));
        } catch (IOException e2) {
            throw new FileNotFoundException(e2.getMessage());
        }
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        String mimeTypeFromExtension;
        String strM91s = C0015d.m91s(m884a(uri).getName());
        return (C0385h.m1081e(strM91s) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strM91s)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No support inserts");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        int iM497b = C0132c.m497b(str);
        if (m883d(uri)) {
            return AbstractC0127f.m463u(m881b(uri)).mo429v(iM497b);
        }
        File fileM884a = m884a(uri);
        String absolutePath = fileM884a.getAbsolutePath();
        boolean z2 = iM497b != 268435456;
        if (C0181d.m570k(absolutePath)) {
            try {
                if (z2) {
                    throw new IllegalArgumentException("ZArchiver: Edit file is supported only in Donation/Pro version");
                }
                return ParcelFileDescriptor.open(fileM884a, iM497b);
            } catch (IOException e2) {
                throw new FileNotFoundException(e2.getMessage());
            }
        }
        String fragment = uri.getFragment();
        if ((fragment != null && fragment.startsWith("R:")) && Build.VERSION.SDK_INT >= 26) {
            String[] strArrM1084h = C0385h.m1084h(uri.getFragment(), ':');
            if (strArrM1084h.length >= 4) {
                return m885e(iM497b, uri.getPath(), C0015d.m81j0(0L, strArrM1084h[1]), C0015d.m79i0(0, strArrM1084h[3]));
            }
            throw new FileNotFoundException("Bad Uri");
        }
        if ((!absolutePath.startsWith("/SAF") && !z2) || !SAF.m866q(absolutePath)) {
            return (iM497b != 536870912 || Build.VERSION.SDK_INT < 26 || !C0358b.m1038i(absolutePath) || fileM884a.canWrite()) ? ParcelFileDescriptor.open(fileM884a, iM497b) : m885e(iM497b, absolutePath, fileM884a.length(), C0358b.f1991m);
        }
        try {
            return ZApp.m719b(getContext()).openFileDescriptor(SAF.m860k(0, absolutePath), str);
        } catch (InvalidPropertiesFormatException e3) {
            throw new FileNotFoundException(e3.getMessage());
        }
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        String absolutePath;
        int i3;
        int i4;
        int i5;
        int i6;
        String[] strArr3 = strArr == null ? f1650a : strArr;
        int length = strArr3.length;
        String[] strArr4 = new String[length];
        int length2 = strArr3.length;
        Object[] objArr = new Object[length2];
        InterfaceC0381d interfaceC0381d = null;
        if (m883d(uri)) {
            int length3 = strArr3.length;
            int i7 = 0;
            i2 = 0;
            while (i7 < length3) {
                String str3 = strArr3[i7];
                strArr4[i2] = str3;
                if ("_display_name".equals(str3)) {
                    objArr[i2] = C0015d.m97y(uri.getPath());
                    i2++;
                    i6 = i7;
                } else if ("_size".equals(str3)) {
                    AbstractC0126e.b bVarM454e = AbstractC0126e.m454e(m881b(uri), interfaceC0381d);
                    i6 = i7;
                    if (bVarM454e != null) {
                        long j2 = bVarM454e.f997c;
                        if (j2 > 0) {
                            objArr[i2] = Long.valueOf(j2);
                            i2++;
                        }
                    }
                } else {
                    i6 = i7;
                    if ("mime_type".equals(str3)) {
                        String strM91s = C0015d.m91s(C0015d.m97y(uri.getPath()));
                        if (!C0385h.m1081e(strM91s)) {
                            objArr[i2] = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strM91s);
                            i2++;
                        }
                    }
                }
                i7 = i6 + 1;
                interfaceC0381d = null;
            }
        } else {
            File fileM884a = m884a(uri);
            String fragment = uri.getFragment();
            String[] strArrM1084h = fragment != null && fragment.startsWith("R:") ? C0385h.m1084h(uri.getFragment(), ':') : null;
            int length4 = strArr3.length;
            int i8 = 0;
            i2 = 0;
            while (i8 < length4) {
                String str4 = strArr3[i8];
                strArr4[i2] = str4;
                if ("_display_name".equals(str4)) {
                    objArr[i2] = fileM884a.getName();
                    i2++;
                    length4 = length4;
                } else if ("_size".equals(str4)) {
                    if (strArrM1084h == null || strArrM1084h.length < 3) {
                        objArr[i2] = Long.valueOf(fileM884a.length());
                        i2++;
                    } else {
                        objArr[i2] = Long.valueOf(C0015d.m81j0(0L, strArrM1084h[1]));
                        i2++;
                    }
                    length4 = length4;
                } else if ("last_modified".equals(str4)) {
                    if (strArrM1084h == null || strArrM1084h.length < 3) {
                        i4 = i2 + 1;
                        objArr[i2] = Long.valueOf(fileM884a.lastModified());
                    } else {
                        i4 = i2 + 1;
                        objArr[i2] = Long.valueOf(C0015d.m81j0(0L, strArrM1084h[2]));
                    }
                    i2 = i4;
                } else {
                    length4 = length4;
                    if ("_data".equals(str4)) {
                        try {
                            absolutePath = fileM884a.getCanonicalPath();
                        } catch (IOException unused) {
                            absolutePath = fileM884a.getAbsolutePath();
                        }
                        if (!C0181d.m570k(absolutePath)) {
                            i3 = i2 + 1;
                            objArr[i2] = absolutePath;
                            i2 = i3;
                        }
                    } else if ("mime_type".equals(str4)) {
                        String strM91s2 = C0015d.m91s(fileM884a.getName());
                        if (!C0385h.m1081e(strM91s2)) {
                            i3 = i2 + 1;
                            objArr[i2] = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strM91s2);
                            i2 = i3;
                        }
                    }
                }
                i8++;
                length4 = length4;
            }
        }
        if (length == i2) {
            i5 = 0;
        } else {
            String[] strArr5 = new String[i2];
            i5 = 0;
            System.arraycopy(strArr4, 0, strArr5, 0, i2);
            strArr4 = strArr5;
        }
        if (length2 != i2) {
            Object[] objArr2 = new Object[i2];
            System.arraycopy(objArr, i5, objArr2, i5, i2);
            objArr = objArr2;
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final void shutdown() {
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }
}
