package p009c1;

/* JADX INFO: renamed from: c1.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0052a extends AbstractC0053b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f381a;

    /* JADX INFO: renamed from: b */
    public final int f382b;

    public /* synthetic */ C0052a(int i2, int i3) {
        this.f381a = i3;
        this.f382b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0070  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ad  */
    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: a */
    public final byte mo202a(byte b2, char c2, char[] cArr, int i2) {
        switch (this.f381a) {
            case 0:
                if (this.f382b != 13) {
                    if (b2 != 1 || c2 != '=') {
                        if (b2 != 1 || (c2 != '[' && c2 != ']')) {
                            if (b2 == 1 && c2 == '#' && i2 == 0) {
                                return (byte) 21;
                            }
                            if ((b2 & 15) == 7) {
                                return (byte) 0;
                            }
                            return b2;
                        }
                        return (byte) 7;
                    }
                    return (byte) 23;
                }
                if (b2 != 5) {
                    if (b2 != 1 || c2 != ':') {
                        if (c2 != '{' && c2 != '}') {
                            if (c2 == '.') {
                                return (byte) 39;
                            }
                            if (c2 == '/') {
                                int i3 = i2 + 1;
                                if ((i3 < cArr.length ? cArr[i3] : (char) 0) == '*') {
                                    return (byte) 5;
                                }
                            }
                        }
                        return (byte) 7;
                    }
                    return (byte) 23;
                }
                if ((i2 > 0 ? cArr[i2 - 1] : (char) 0) == '*' && c2 == '/') {
                    return (byte) 65;
                }
                if ((b2 & 15) == 7) {
                    return (byte) 0;
                }
                return b2;
            default:
                if (b2 == 1) {
                    b2 = 0;
                }
                if (Character.isLetterOrDigit(c2)) {
                    b2 = mo205e(b2);
                } else if (b2 == 0 || (b2 & 7) == 7) {
                    int i4 = i2 + 1;
                    char c3 = i4 < cArr.length ? cArr[i4] : (char) 0;
                    if (c2 == '<') {
                        return c3 == '!' ? (byte) 5 : (byte) 7;
                    }
                    if (c2 == '>' || ((c2 == '/' || c2 == '?') && c3 == '>')) {
                        return (byte) 23;
                    }
                    if (c2 == '\"') {
                        return (byte) 2;
                    }
                    if (c2 == '\'') {
                        b2 = 18;
                    }
                } else if ((b2 & 15) == 2) {
                    int i5 = b2 & 48;
                    if (c2 != '\"' ? !(c2 != '\'' || i5 != 16) : i5 == 0) {
                        b2 = 64;
                    }
                } else if (b2 == 5 && c2 == '>') {
                    if ((i2 > 0 ? cArr[i2 - 1] : (char) 0) == '-') {
                        b2 = 64;
                    }
                }
                return b2;
        }
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: c */
    public final int mo203c() {
        return this.f382b;
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: d */
    public final byte mo204d(byte b2) {
        switch (this.f381a) {
            case 0:
                if (b2 == 5) {
                    return b2;
                }
                return (byte) 1;
            default:
                if (b2 == 5) {
                    return b2;
                }
                return (byte) 0;
        }
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: e */
    public final byte mo205e(byte b2) {
        switch (this.f381a) {
            case 0:
                if (b2 == 7) {
                    return (byte) 1;
                }
                if (b2 == 23) {
                    return (byte) 0;
                }
                if (b2 == 39) {
                    b2 = 2;
                }
                return b2;
            default:
                if (b2 == 7) {
                    return (byte) 1;
                }
                if ((b2 & 15) == 2 || b2 == 5) {
                    return b2;
                }
                return (byte) 0;
        }
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: f */
    public final byte mo206f(char[] cArr, int i2, int i3) {
        switch (this.f381a) {
            case 0:
                return (byte) 0;
            default:
                return (byte) 12;
        }
    }
}
