package ru.zdevs.zarchiver.p044io;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import p020g0.C0129h;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: loaded from: classes.dex */
public class KitKatExtSD {
    /* JADX INFO: renamed from: a */
    public static Uri m847a(File file) {
        if (file.exists() && file.isDirectory()) {
            return null;
        }
        try {
            ContentResolver contentResolverM718a = ZApp.m718a();
            Uri contentUri = MediaStore.Files.getContentUri("external");
            contentResolverM718a.delete(contentUri, "_data=?", new String[]{file.getAbsolutePath()});
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", file.getAbsolutePath());
            contentValues.put("_size", (Integer) 1);
            return contentResolverM718a.insert(contentUri, contentValues);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    public static Uri m848b(String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            return null;
        }
        try {
            Cursor cursorQuery = ZApp.m718a().query(MediaStore.Files.getContentUri("external"), new String[]{"_id"}, "_data=?", new String[]{file.getAbsolutePath()}, "_id");
            if (cursorQuery == null) {
                return null;
            }
            try {
                if (cursorQuery.getCount() == 1) {
                    int columnIndex = cursorQuery.getColumnIndex("_id");
                    cursorQuery.moveToFirst();
                    return MediaStore.Files.getContentUri("external", cursorQuery.getLong(columnIndex));
                }
            } finally {
                cursorQuery.close();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static Uri m849c(C0129h c0129h) {
        File file = c0129h.toFile();
        if (file == null) {
            return null;
        }
        return Uri.fromFile(file);
    }

    public static int close(int i2) {
        return 0;
    }

    public static int errno() {
        return 13;
    }

    public static int mkdir(String str) {
        File file = new File(str);
        if (file.exists()) {
            return -1;
        }
        OutputStream outputStreamOpenOutputStream = null;
        try {
            Uri uriM847a = m847a(new File(file.getAbsoluteFile() + "/.za_tmp.txt"));
            if (uriM847a != null) {
                outputStreamOpenOutputStream = ZApp.m718a().openOutputStream(uriM847a);
            }
        } catch (Exception unused) {
        }
        if (outputStreamOpenOutputStream == null) {
            return -1;
        }
        try {
            outputStreamOpenOutputStream.close();
            return 0;
        } catch (IOException unused2) {
            return 0;
        }
    }

    public static int mkdirs(String str, int i2) {
        return mkdir(str);
    }

    public static int open(String str, int i2) {
        Uri uriM848b;
        try {
            if ((i2 & 65) != 0) {
                uriM848b = (i2 & 1026) != 0 ? m848b(str) : null;
                if (uriM848b == null) {
                    uriM848b = m847a(new File(str));
                }
            } else {
                uriM848b = m848b(str);
            }
            if (uriM848b == null) {
                return -2;
            }
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = ZApp.m718a().openFileDescriptor(uriM848b, ZAIO.m875d(i2));
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                return -3;
            }
            return parcelFileDescriptorOpenFileDescriptor.detachFd();
        } catch (Exception unused) {
            return -4;
        }
    }

    public static int remove(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return 0;
        }
        file.getAbsolutePath();
        return -1;
    }

    public static int rename(String str, String str2) {
        return -1;
    }
}
