package p039p0;

import android.media.ExifInterface;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: renamed from: p0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0226d extends ExifInterface {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f1273b = 0;

    /* JADX INFO: renamed from: a */
    public final InputStream f1274a;

    public C0226d(String str) {
        super(str);
        this.f1274a = null;
    }

    @Override // android.media.ExifInterface
    public final byte[] getThumbnail() {
        InputStream inputStream = this.f1274a;
        if (inputStream == null || Build.VERSION.SDK_INT < 24) {
            return super.getThumbnail();
        }
        if (!hasThumbnail()) {
            return null;
        }
        try {
            long[] thumbnailRange = getThumbnailRange();
            if (thumbnailRange == null) {
                return null;
            }
            if (inputStream instanceof FileInputStream) {
                if (Os.lseek(((FileInputStream) inputStream).getFD(), thumbnailRange[0], OsConstants.SEEK_SET) != thumbnailRange[0]) {
                    return null;
                }
            } else if (inputStream.markSupported()) {
                inputStream.reset();
                if (inputStream.skip(thumbnailRange[0]) != thumbnailRange[0]) {
                    return null;
                }
            }
            int i2 = (int) thumbnailRange[1];
            byte[] bArr = new byte[i2];
            if (inputStream.read(bArr) != i2) {
                return null;
            }
            return bArr;
        } catch (Exception unused) {
        }
        return null;
    }

    public C0226d(FileDescriptor fileDescriptor) {
        super(fileDescriptor);
        this.f1274a = null;
    }

    public C0226d(InputStream inputStream) {
        super(inputStream);
        this.f1274a = inputStream;
    }
}
