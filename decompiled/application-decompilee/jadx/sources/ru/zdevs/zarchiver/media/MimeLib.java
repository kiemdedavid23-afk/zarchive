package ru.zdevs.zarchiver.media;

/* JADX INFO: loaded from: classes.dex */
public class MimeLib {
    static {
        try {
            System.loadLibrary("mime");
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public static native int cGetType(String str);
}
