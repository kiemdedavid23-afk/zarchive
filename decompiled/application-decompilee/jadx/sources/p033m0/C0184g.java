package p033m0;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;

/* JADX INFO: renamed from: m0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0184g extends Reader {

    /* JADX INFO: renamed from: a */
    public final Reader f1151a;

    /* JADX INFO: renamed from: b */
    public final char[] f1152b;

    /* JADX INFO: renamed from: c */
    public int f1153c;

    /* JADX INFO: renamed from: d */
    public int f1154d;

    /* JADX INFO: renamed from: e */
    public boolean f1155e;

    /* JADX INFO: renamed from: f */
    public boolean f1156f;

    public C0184g(InputStreamReader inputStreamReader) {
        super(inputStreamReader);
        this.f1155e = false;
        this.f1156f = false;
        this.f1151a = inputStreamReader;
        this.f1152b = new char[8192];
        this.f1153c = 0;
        this.f1154d = 0;
    }

    /* JADX INFO: renamed from: a */
    public final void m576a() throws IOException {
        int i2;
        do {
            char[] cArr = this.f1152b;
            i2 = this.f1151a.read(cArr, 0, cArr.length);
        } while (i2 == 0);
        if (i2 > 0) {
            this.f1153c = i2;
            this.f1154d = 0;
        }
    }

    /* JADX INFO: renamed from: b */
    public final int m577b(char[] cArr, int i2, int i3) throws IOException {
        if (this.f1154d >= this.f1153c) {
            m576a();
            if (this.f1154d >= this.f1153c) {
                return -1;
            }
        }
        boolean z2 = this.f1155e;
        char[] cArr2 = this.f1152b;
        if (z2) {
            this.f1155e = false;
            int i4 = this.f1154d;
            if (cArr2[i4] == '\n') {
                int i5 = i4 + 1;
                this.f1154d = i5;
                if (i5 >= this.f1153c) {
                    m576a();
                    if (this.f1154d >= this.f1153c) {
                        return -1;
                    }
                }
            }
        }
        int iMin = Math.min(i3, this.f1153c - this.f1154d);
        System.arraycopy(cArr2, this.f1154d, cArr, i2, iMin);
        this.f1154d += iMin;
        return iMin;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m578c(StringBuilder sb) {
        int length = sb.length();
        synchronized (((Reader) this).lock) {
            while (true) {
                boolean z2 = true;
                boolean z3 = false;
                if (this.f1154d >= this.f1153c) {
                    m576a();
                    if (this.f1154d >= this.f1153c) {
                        if (sb.length() <= length) {
                            z2 = false;
                        }
                        return z2;
                    }
                }
                if (this.f1155e) {
                    char[] cArr = this.f1152b;
                    int i2 = this.f1154d;
                    if (cArr[i2] == '\n') {
                        this.f1154d = i2 + 1;
                    }
                }
                this.f1155e = false;
                int i3 = this.f1154d;
                char c2 = 0;
                while (i3 < this.f1153c) {
                    c2 = this.f1152b[i3];
                    if (c2 != '\n' && c2 != '\r') {
                        i3++;
                    }
                    z3 = true;
                }
                int i4 = this.f1154d;
                this.f1154d = i3;
                if (z3) {
                    sb.append(this.f1152b, i4, i3 - i4);
                    sb.append('\n');
                    this.f1154d++;
                    if (c2 == '\r') {
                        this.f1155e = true;
                        this.f1156f = true;
                    }
                    return true;
                }
                sb.append(this.f1152b, i4, i3 - i4);
            }
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (((Reader) this).lock) {
            C0181d.m563d(this.f1151a);
        }
    }

    @Override // java.io.Reader
    public final int read(char[] cArr, int i2, int i3) {
        int i4;
        synchronized (((Reader) this).lock) {
            if (i2 >= 0) {
                if (i2 <= cArr.length && i3 >= 0 && (i4 = i2 + i3) <= cArr.length && i4 >= 0) {
                    if (i3 == 0) {
                        return 0;
                    }
                    int iM577b = m577b(cArr, i2, i3);
                    if (iM577b <= 0) {
                        return iM577b;
                    }
                    while (iM577b < i3 && this.f1151a.ready()) {
                        int iM577b2 = m577b(cArr, i2 + iM577b, i3 - iM577b);
                        if (iM577b2 <= 0) {
                            break;
                        }
                        iM577b += iM577b2;
                    }
                    return iM577b;
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }
}
