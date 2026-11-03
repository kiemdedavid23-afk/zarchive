package p033m0;

import android.database.Cursor;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import android.text.GetChars;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
import p046s.C0356b;
import p051u0.InterfaceC0381d;
import p055w0.C0412c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.p045ui.editor.C0339b;

/* JADX INFO: renamed from: m0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0181d {

    /* JADX INFO: renamed from: a */
    public static String f1138a;

    /* JADX INFO: renamed from: m0.d$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final byte[] f1139a;

        /* JADX INFO: renamed from: b */
        public final String f1140b;

        /* JADX INFO: renamed from: c */
        public final boolean f1141c;

        public a(byte[] bArr, String str, boolean z2) {
            this.f1139a = bArr;
            this.f1140b = str;
            this.f1141c = z2;
        }
    }

    /* JADX INFO: renamed from: a */
    public static boolean m560a(String str) {
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        Matcher matcher = Pattern.compile("[|:<*>?\\\\]").matcher(str);
        if (!matcher.find()) {
            return false;
        }
        ZApp.m726j("Name contains an invalid character: " + matcher.group());
        return true;
    }

    /* JADX INFO: renamed from: b */
    public static void m561b(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m562c(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m563d(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m564e(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m565f(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static String m566g() {
        String str = f1138a;
        if (str != null) {
            return str;
        }
        File externalFilesDir = null;
        try {
            externalFilesDir = ZApp.m722e().getExternalFilesDir(null);
        } catch (Exception unused) {
        }
        if (externalFilesDir != null) {
            f1138a = externalFilesDir.getAbsolutePath();
        } else {
            f1138a = C0412c.m1115i().f2153b + "/Android/data/ru.zdevs.zarchiver/files";
        }
        return f1138a;
    }

    /* JADX INFO: renamed from: h */
    public static boolean m567h(String str) {
        return m569j(str);
    }

    /* JADX INFO: renamed from: i */
    public static boolean m568i(String str) {
        boolean z2;
        boolean z3 = false;
        try {
            z2 = Os.lstat(str) != null;
        } catch (Exception unused) {
        }
        if (z2 || Build.VERSION.SDK_INT <= 33) {
            return z2;
        }
        if (C2JBridge.f1554c || C2JBridge.m804e()) {
            z3 = C2JBridge.cIsExist(str) == 0;
        }
        return z3;
    }

    /* JADX INFO: renamed from: j */
    public static boolean m569j(String str) {
        try {
            return Os.access(str, OsConstants.F_OK);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: k */
    public static boolean m570k(String str) {
        String str2 = f1138a;
        return str2 != null ? str.startsWith(str2) : str.contains("/Android/data/ru.zdevs.zarchiver/files/");
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b7 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:37:0x0095, B:38:0x009a, B:41:0x00a2, B:45:0x00ac, B:46:0x00b3, B:48:0x00b7, B:49:0x00ba), top: B:57:0x0095 }] */
    /* JADX INFO: renamed from: l */
    public static a m571l(InputStream inputStream, C0339b c0339b, String str, InterfaceC0381d interfaceC0381d) throws Throwable {
        byte[] bArr;
        C0184g c0184g;
        StringBuilder sb;
        C0184g c0184g2 = null;
        if (str == null) {
            try {
                if (!inputStream.markSupported()) {
                    inputStream = new BufferedInputStream(inputStream, 4096);
                }
                inputStream.mark(4096);
                str = C0356b.m1016a(inputStream);
                inputStream.reset();
                if ("US-ASCII".equals(str)) {
                    str = null;
                }
            } catch (Throwable th) {
                th = th;
                m563d(c0184g2);
                throw th;
            }
        }
        try {
            if (str != null) {
                if (str.startsWith("UTF-")) {
                    if (!inputStream.markSupported()) {
                        inputStream = new BufferedInputStream(inputStream, 16);
                    }
                    inputStream.mark(16);
                    int i2 = 4;
                    byte[] bArr2 = new byte[4];
                    if (inputStream.read(bArr2) != 4 || C0356b.m1017b(bArr2) == null) {
                        bArr = null;
                    } else {
                        char cCharAt = str.charAt(4);
                        if (cCharAt == '8') {
                            i2 = 3;
                        } else if (cCharAt == '1') {
                            i2 = 2;
                        } else if (cCharAt != '3') {
                            bArr = null;
                        }
                        bArr = new byte[i2];
                        System.arraycopy(bArr2, 0, bArr, 0, i2);
                    }
                    inputStream.reset();
                    if (bArr != null) {
                        inputStream.skip(bArr.length);
                    }
                }
                CharsetDecoder charsetDecoderNewDecoder = Charset.forName(str).newDecoder();
                charsetDecoderNewDecoder.onMalformedInput(CodingErrorAction.REPLACE);
                charsetDecoderNewDecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
                c0184g = new C0184g(new InputStreamReader(inputStream, charsetDecoderNewDecoder));
                sb = new StringBuilder();
                while (c0184g.m578c(sb)) {
                    if (interfaceC0381d == null && interfaceC0381d.isCancelled()) {
                        m563d(c0184g);
                        return null;
                    }
                    c0339b.m976o(sb);
                    sb.setLength(0);
                }
                if (c0339b.f1800c == 0) {
                    c0339b.clear();
                }
                a aVar = new a(bArr, str, c0184g.f1156f);
                m563d(c0184g);
                return aVar;
            }
            str = "UTF-8";
            sb = new StringBuilder();
            while (c0184g.m578c(sb)) {
                if (interfaceC0381d == null) {
                }
                c0339b.m976o(sb);
                sb.setLength(0);
            }
            if (c0339b.f1800c == 0) {
                c0339b.clear();
            }
            a aVar2 = new a(bArr, str, c0184g.f1156f);
            m563d(c0184g);
            return aVar2;
        } catch (Throwable th2) {
            th = th2;
            c0184g2 = c0184g;
            m563d(c0184g2);
            throw th;
        }
        bArr = null;
        CharsetDecoder charsetDecoderNewDecoder2 = Charset.forName(str).newDecoder();
        charsetDecoderNewDecoder2.onMalformedInput(CodingErrorAction.REPLACE);
        charsetDecoderNewDecoder2.onUnmappableCharacter(CodingErrorAction.REPLACE);
        c0184g = new C0184g(new InputStreamReader(inputStream, charsetDecoderNewDecoder2));
    }

    /* JADX INFO: renamed from: m */
    public static String m572m(DataInputStream dataInputStream, boolean z2) {
        byte[] bArr = new byte[1024];
        int i2 = 0;
        while (true) {
            int i3 = (z2 || dataInputStream.available() > 0) ? dataInputStream.read() : -1;
            if (i3 == -1) {
                if (i2 == 0) {
                    return null;
                }
                return new String(bArr, 0, i2, "UTF-8");
            }
            if (i3 == 10) {
                return new String(bArr, 0, i2, "UTF-8");
            }
            if (i3 != 13) {
                bArr[i2] = (byte) i3;
                i2++;
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m573n(OutputStream outputStream, CharSequence charSequence, a aVar, long j2) throws IOException {
        String string;
        byte[] bArr = aVar.f1139a;
        if (bArr != null) {
            outputStream.write(bArr);
        }
        int length = charSequence.length();
        boolean z2 = charSequence instanceof GetChars;
        char[] cArr = z2 ? new char[8192] : null;
        long length2 = 0;
        int i2 = 0;
        while (i2 < length) {
            int iMin = Math.min(i2 + 8192, length);
            if (z2) {
                ((GetChars) charSequence).getChars(i2, iMin, cArr, 0);
                string = new String(cArr, 0, iMin - i2);
            } else {
                string = charSequence.subSequence(i2, iMin).toString();
            }
            if (aVar.f1141c) {
                string = string.replace("\n", "\r\n");
            }
            byte[] bytes = string.getBytes(aVar.f1140b);
            outputStream.write(bytes);
            length2 += (long) bytes.length;
            i2 = iMin;
        }
        outputStream.flush();
        if (j2 <= length2 || !(outputStream instanceof FileOutputStream)) {
            return;
        }
        try {
            Os.ftruncate(((FileOutputStream) outputStream).getFD(), length2);
        } catch (Exception unused) {
        }
    }
}
