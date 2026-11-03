package p059y0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import p039p0.C0224b;
import p047s0.C0358b;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: y0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0438b {

    /* JADX INFO: renamed from: a */
    public static final int[] f2229a = {R.drawable.ic_android, R.drawable.ic_alarm, R.drawable.ic_app, R.drawable.ic_bin, R.drawable.ic_camera, R.drawable.ic_dev, R.drawable.ic_document, R.drawable.ic_download, R.drawable.ic_home, R.drawable.ic_music, R.drawable.ic_notifications, R.drawable.ic_phone, R.drawable.ic_picture, R.drawable.ic_podcast, R.drawable.ic_ringtone, R.drawable.ic_root, R.drawable.ic_settings, R.drawable.ic_storage, R.drawable.ic_trash, R.drawable.ic_video, R.drawable.ic_bluetooth, R.drawable.ic_framework, R.drawable.ic_font, R.drawable.ic_book, R.drawable.ic_archive, R.drawable.ic_tree, R.drawable.ic_clone, R.drawable.fs_encrypt, R.drawable.fs_assumption, R.drawable.fs_compressed, R.drawable.ic_play_circle};

    /* JADX INFO: renamed from: b */
    public static final Bitmap[] f2230b = new Bitmap[28];

    /* JADX INFO: renamed from: c */
    public static final SparseArray<Bitmap> f2231c = new SparseArray<>();

    /* JADX INFO: renamed from: d */
    public static int f2232d;

    /* JADX INFO: renamed from: e */
    public static int f2233e;

    /* JADX INFO: renamed from: f */
    public static int f2234f;

    /* JADX INFO: renamed from: g */
    public static int f2235g;

    static {
        int i2 = C0358b.f1989k;
        f2232d = i2;
        f2233e = i2 / 4;
        f2234f = 0;
        f2235g = 0;
    }

    /* JADX INFO: renamed from: a */
    public static Bitmap m1160a(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        Bitmap bitmap = f2230b[i2];
        if (bitmap != null) {
            return bitmap;
        }
        Resources resources = ZApp.f1375c.getResources();
        int i3 = f2232d;
        return C0224b.m631a(resources, R.drawable.fs_unknown, i3, i3);
    }

    /* JADX INFO: renamed from: b */
    public static int m1161b(int i2, int i3) {
        if (i2 == 8192) {
            switch (i3) {
                case -2:
                    return R.drawable.folderm_root;
                case -1:
                    return R.drawable.folderm_internal;
                case 0:
                    return R.drawable.folderm_usb;
                case 1:
                    return R.drawable.folderm_sd;
                case 2:
                    return R.drawable.folderm_home;
                case 3:
                    return R.drawable.folderm_archive;
                case 4:
                    return R.drawable.folderm_document;
                case 5:
                    return R.drawable.folderm_download;
                case 6:
                    return R.drawable.folderm_music;
                case 7:
                    return R.drawable.folderm_picture;
                case 8:
                    return R.drawable.folderm_video;
                case 9:
                    return R.drawable.folderm_games;
                case 10:
                    return R.drawable.folderm_cloud;
                case 11:
                    return R.drawable.foldern_image;
                case 12:
                    return R.drawable.foldern_ftp;
                default:
                    return R.drawable.folderm_default;
            }
        }
        if (i2 != 12288) {
            switch (i3) {
                case -2:
                    return R.drawable.folder_root;
                case -1:
                    return R.drawable.folder_internal;
                case 0:
                    return R.drawable.folder_usb;
                case 1:
                    return R.drawable.folder_sd;
                case 2:
                    return R.drawable.folder_home;
                case 3:
                    return R.drawable.folder_archive;
                case 4:
                    return R.drawable.folder_document;
                case 5:
                    return R.drawable.folder_download;
                case 6:
                    return R.drawable.folder_music;
                case 7:
                    return R.drawable.folder_picture;
                case 8:
                    return R.drawable.folder_video;
                case 9:
                    return R.drawable.folder_games;
                case 10:
                    return R.drawable.folder_cloud;
                case 11:
                    return R.drawable.folder_image;
                case 12:
                    return R.drawable.folder_ftp;
                default:
                    return R.drawable.folder_default;
            }
        }
        switch (i3) {
            case -2:
                return R.drawable.foldern_root;
            case -1:
                return R.drawable.foldern_internal;
            case 0:
                return R.drawable.foldern_usb;
            case 1:
                return R.drawable.foldern_sd;
            case 2:
                return R.drawable.foldern_home;
            case 3:
                return R.drawable.foldern_archive;
            case 4:
                return R.drawable.foldern_document;
            case 5:
                return R.drawable.foldern_download;
            case 6:
                return R.drawable.foldern_music;
            case 7:
                return R.drawable.foldern_picture;
            case 8:
                return R.drawable.foldern_video;
            case 9:
                return R.drawable.foldern_games;
            case 10:
                return R.drawable.foldern_cloud;
            case 11:
                return R.drawable.foldern_image;
            case 12:
                return R.drawable.foldern_ftp;
            default:
                return R.drawable.fsn_folder;
        }
    }

    /* JADX INFO: renamed from: c */
    public static Bitmap m1162c(Context context, Bitmap bitmap, int i2) {
        if (i2 > 0 && i2 < 32 && (i2 != 30 || C0358b.m1033d() == 12288)) {
            Bitmap bitmapM1164e = m1164e(context, i2);
            if (bitmapM1164e.getHeight() == 1) {
                return bitmap;
            }
            bitmap = bitmap.copy(bitmap.getConfig(), true);
            Canvas canvas = new Canvas(bitmap);
            if (i2 >= 28) {
                canvas.drawBitmap(bitmapM1164e, 0.0f, 0.0f, (Paint) null);
            } else {
                canvas.drawBitmap(bitmapM1164e, f2234f, f2235g, (Paint) null);
            }
        }
        return bitmap;
    }

    /* JADX INFO: renamed from: d */
    public static Bitmap m1163d(Bitmap bitmap, Drawable drawable) {
        if (drawable == null || bitmap == null) {
            return bitmap;
        }
        float intrinsicWidth = f2233e / drawable.getIntrinsicWidth();
        int intrinsicWidth2 = (int) (drawable.getIntrinsicWidth() * intrinsicWidth);
        int intrinsicHeight = (int) (drawable.getIntrinsicHeight() * intrinsicWidth);
        int i2 = f2234f;
        int i3 = f2233e;
        int i4 = ((i3 - intrinsicWidth2) / 2) + i2;
        int i5 = ((i3 - intrinsicHeight) / 2) + f2235g;
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig(), true);
        Canvas canvas = new Canvas(bitmapCopy);
        drawable.setBounds(i4, i5, intrinsicWidth2 + i4, intrinsicHeight + i5);
        drawable.draw(canvas);
        return bitmapCopy;
    }

    /* JADX INFO: renamed from: e */
    public static Bitmap m1164e(Context context, int i2) {
        Bitmap bitmapM635e;
        SparseArray<Bitmap> sparseArray = f2231c;
        Bitmap bitmap = sparseArray.get(i2);
        if (bitmap != null) {
            return bitmap;
        }
        int i3 = (C0358b.m1040k(1536) && C0358b.m1033d() == 8192) ? -16777216 : 0;
        Resources resources = context.getResources();
        int[] iArr = f2229a;
        if (i2 < 28) {
            int i4 = iArr[i2 - 1];
            int i5 = f2233e;
            bitmapM635e = C0224b.m635e(resources, null, i4, i5, i5, i3);
        } else {
            int i6 = iArr[i2 - 1];
            int i7 = f2232d;
            bitmapM635e = C0224b.m635e(resources, null, i6, i7, i7, i3);
        }
        Bitmap bitmap2 = bitmapM635e;
        sparseArray.put(i2, bitmap2);
        return bitmap2;
    }

    /* JADX INFO: renamed from: f */
    public static void m1165f(Context context, int i2, boolean z2) {
        Bitmap bitmapValueAt;
        int i3 = C0358b.f1989k;
        f2232d = i3;
        if (z2) {
            f2232d = (int) (i3 * 1.6f);
        }
        if (i2 < 12288 && f2232d > 100) {
            f2232d = 100;
        }
        int i4 = f2232d;
        f2233e = (int) (i4 * 0.4f);
        if (i2 == 8192) {
            f2234f = i4 / 2;
            f2235g = (int) (i4 / 2.5f);
            Resources resources = context.getResources();
            Bitmap[] bitmapArr = f2230b;
            int i5 = f2232d;
            bitmapArr[0] = C0224b.m634d(resources, R.drawable.fsm_unknown, i5, i5);
            if (C0358b.m1040k(1536)) {
                int i6 = f2232d;
                bitmapArr[3] = C0224b.m634d(resources, R.drawable.fsm_up_eink, i6, i6);
                int i7 = f2232d;
                bitmapArr[4] = C0224b.m634d(resources, R.drawable.fsm_folder_eink, i7, i7);
            } else {
                Resources.Theme themeNewTheme = resources.newTheme();
                themeNewTheme.applyStyle(C0358b.f1987i, true);
                int i8 = f2232d;
                bitmapArr[3] = C0224b.m635e(resources, themeNewTheme, R.drawable.fsm_up, i8, i8, 0);
                int i9 = f2232d;
                bitmapArr[4] = C0224b.m635e(resources, themeNewTheme, R.drawable.fsm_folder, i9, i9, 0);
            }
            int i10 = f2232d;
            bitmapArr[5] = C0224b.m634d(resources, R.drawable.fsm_word, i10, i10);
            int i11 = f2232d;
            bitmapArr[6] = C0224b.m634d(resources, R.drawable.fsm_apk, i11, i11);
            int i12 = f2232d;
            bitmapArr[1] = C0224b.m634d(resources, R.drawable.fsm_archive, i12, i12);
            int i13 = f2232d;
            bitmapArr[2] = C0224b.m634d(resources, R.drawable.fsm_cd_image, i13, i13);
            int i14 = f2232d;
            bitmapArr[7] = C0224b.m634d(resources, R.drawable.fsm_audio, i14, i14);
            int i15 = f2232d;
            bitmapArr[8] = C0224b.m634d(resources, R.drawable.fsm_excel, i15, i15);
            int i16 = f2232d;
            bitmapArr[9] = C0224b.m634d(resources, R.drawable.fsm_picture, i16, i16);
            int i17 = f2232d;
            bitmapArr[10] = C0224b.m634d(resources, R.drawable.fsm_powerpoint, i17, i17);
            int i18 = f2232d;
            bitmapArr[11] = C0224b.m634d(resources, R.drawable.fsm_text, i18, i18);
            int i19 = f2232d;
            bitmapArr[12] = C0224b.m634d(resources, R.drawable.fsm_web, i19, i19);
            int i20 = f2232d;
            bitmapArr[13] = C0224b.m634d(resources, R.drawable.fsm_acrobat, i20, i20);
            int i21 = f2232d;
            bitmapArr[14] = C0224b.m634d(resources, R.drawable.fsm_video, i21, i21);
            int i22 = f2232d;
            bitmapArr[16] = C0224b.m634d(resources, R.drawable.fsm_xml, i22, i22);
            int i23 = f2232d;
            bitmapArr[15] = C0224b.m634d(resources, R.drawable.fsm_ebook, i23, i23);
            int i24 = f2232d;
            bitmapArr[19] = C0224b.m634d(resources, R.drawable.fsm_archive_7z, i24, i24);
            int i25 = f2232d;
            bitmapArr[18] = C0224b.m634d(resources, R.drawable.fsm_archive_zip, i25, i25);
            int i26 = f2232d;
            bitmapArr[17] = C0224b.m634d(resources, R.drawable.fsm_archive_rar, i26, i26);
            int i27 = f2232d;
            bitmapArr[21] = C0224b.m634d(resources, R.drawable.fsm_lib, i27, i27);
            int i28 = f2232d;
            bitmapArr[22] = C0224b.m634d(resources, R.drawable.fsm_dex, i28, i28);
            int i29 = f2232d;
            bitmapArr[20] = C0224b.m634d(resources, R.drawable.fsm_apks, i29, i29);
            int i30 = f2232d;
            bitmapArr[23] = C0224b.m634d(resources, R.drawable.fsm_obb, i30, i30);
            int i31 = f2232d;
            bitmapArr[24] = C0224b.m634d(resources, R.drawable.fsm_game_rom, i31, i31);
            int i32 = f2232d;
            bitmapArr[25] = C0224b.m634d(resources, R.drawable.fsm_backup, i32, i32);
            int i33 = f2232d;
            bitmapArr[26] = C0224b.m634d(resources, R.drawable.fsm_fonts, i33, i33);
            int i34 = f2232d;
            bitmapArr[27] = C0224b.m634d(resources, R.drawable.fsm_theme, i34, i34);
        } else if (i2 != 12288) {
            f2234f = (int) (i4 / 1.9f);
            f2235g = (int) (i4 / 2.75f);
            Resources resources2 = context.getResources();
            Bitmap[] bitmapArr2 = f2230b;
            int i35 = f2232d;
            bitmapArr2[0] = C0224b.m631a(resources2, R.drawable.fs_unknown, i35, i35);
            int i36 = f2232d;
            bitmapArr2[3] = C0224b.m631a(resources2, R.drawable.fs_up, i36, i36);
            int i37 = f2232d;
            bitmapArr2[4] = C0224b.m631a(resources2, R.drawable.fs_folder, i37, i37);
            int i38 = f2232d;
            bitmapArr2[5] = C0224b.m631a(resources2, R.drawable.fs_word, i38, i38);
            int i39 = f2232d;
            bitmapArr2[6] = C0224b.m631a(resources2, R.drawable.fs_apk, i39, i39);
            int i40 = f2232d;
            bitmapArr2[1] = C0224b.m631a(resources2, R.drawable.fs_archive, i40, i40);
            int i41 = f2232d;
            bitmapArr2[2] = C0224b.m631a(resources2, R.drawable.fs_archive, i41, i41);
            int i42 = f2232d;
            bitmapArr2[7] = C0224b.m631a(resources2, R.drawable.fs_audio, i42, i42);
            int i43 = f2232d;
            bitmapArr2[8] = C0224b.m631a(resources2, R.drawable.fs_excel, i43, i43);
            int i44 = f2232d;
            bitmapArr2[9] = C0224b.m631a(resources2, R.drawable.fs_picture, i44, i44);
            int i45 = f2232d;
            bitmapArr2[10] = C0224b.m631a(resources2, R.drawable.fs_powerpoint, i45, i45);
            int i46 = f2232d;
            bitmapArr2[11] = C0224b.m631a(resources2, R.drawable.fs_text, i46, i46);
            int i47 = f2232d;
            bitmapArr2[12] = C0224b.m631a(resources2, R.drawable.fs_web, i47, i47);
            int i48 = f2232d;
            bitmapArr2[13] = C0224b.m631a(resources2, R.drawable.fs_acrobat, i48, i48);
            int i49 = f2232d;
            bitmapArr2[14] = C0224b.m631a(resources2, R.drawable.fs_video, i49, i49);
            int i50 = f2232d;
            bitmapArr2[16] = C0224b.m631a(resources2, R.drawable.fs_xml, i50, i50);
            int i51 = f2232d;
            bitmapArr2[15] = C0224b.m631a(resources2, R.drawable.fs_ebook, i51, i51);
            Bitmap bitmap = bitmapArr2[1];
            bitmapArr2[19] = bitmap;
            bitmapArr2[18] = bitmap;
            bitmapArr2[17] = bitmap;
            Bitmap bitmap2 = bitmapArr2[0];
            bitmapArr2[21] = bitmap2;
            bitmapArr2[22] = bitmap2;
            bitmapArr2[20] = bitmapArr2[6];
            bitmapArr2[23] = bitmap2;
            bitmapArr2[24] = bitmap2;
            bitmapArr2[25] = bitmap;
            bitmapArr2[26] = bitmap2;
            bitmapArr2[27] = bitmap2;
        } else {
            f2234f = i4 / 2;
            f2235g = (int) (i4 / 2.5f);
            Resources resources3 = context.getResources();
            Resources.Theme themeNewTheme2 = resources3.newTheme();
            themeNewTheme2.applyStyle(C0358b.f1987i, true);
            Bitmap[] bitmapArr3 = f2230b;
            int i52 = f2232d;
            bitmapArr3[0] = C0224b.m634d(resources3, R.drawable.fsn_unknown, i52, i52);
            int i53 = f2232d;
            bitmapArr3[3] = C0224b.m635e(resources3, themeNewTheme2, R.drawable.fsn_up, i53, i53, 0);
            int i54 = f2232d;
            bitmapArr3[4] = C0224b.m635e(resources3, themeNewTheme2, R.drawable.fsn_folder, i54, i54, 0);
            int i55 = f2232d;
            bitmapArr3[5] = C0224b.m634d(resources3, R.drawable.fsn_word, i55, i55);
            int i56 = f2232d;
            bitmapArr3[6] = C0224b.m634d(resources3, R.drawable.fsn_apk, i56, i56);
            int i57 = f2232d;
            bitmapArr3[1] = C0224b.m634d(resources3, R.drawable.fsn_archive, i57, i57);
            int i58 = f2232d;
            bitmapArr3[2] = C0224b.m634d(resources3, R.drawable.fsn_cd_image, i58, i58);
            int i59 = f2232d;
            bitmapArr3[7] = C0224b.m634d(resources3, R.drawable.fsn_audio, i59, i59);
            int i60 = f2232d;
            bitmapArr3[8] = C0224b.m634d(resources3, R.drawable.fsn_excel, i60, i60);
            int i61 = f2232d;
            bitmapArr3[9] = C0224b.m634d(resources3, R.drawable.fsn_picture, i61, i61);
            int i62 = f2232d;
            bitmapArr3[10] = C0224b.m634d(resources3, R.drawable.fsn_powerpoint, i62, i62);
            int i63 = f2232d;
            bitmapArr3[11] = C0224b.m634d(resources3, R.drawable.fsn_text, i63, i63);
            int i64 = f2232d;
            bitmapArr3[12] = C0224b.m634d(resources3, R.drawable.fsn_web, i64, i64);
            int i65 = f2232d;
            bitmapArr3[13] = C0224b.m634d(resources3, R.drawable.fsn_acrobat, i65, i65);
            int i66 = f2232d;
            bitmapArr3[14] = C0224b.m634d(resources3, R.drawable.fsn_video, i66, i66);
            int i67 = f2232d;
            bitmapArr3[16] = C0224b.m634d(resources3, R.drawable.fsn_xml, i67, i67);
            int i68 = f2232d;
            bitmapArr3[15] = C0224b.m634d(resources3, R.drawable.fsn_ebook, i68, i68);
            int i69 = f2232d;
            bitmapArr3[19] = C0224b.m634d(resources3, R.drawable.fsn_archive_7z, i69, i69);
            int i70 = f2232d;
            bitmapArr3[18] = C0224b.m634d(resources3, R.drawable.fsn_archive_zip, i70, i70);
            int i71 = f2232d;
            bitmapArr3[17] = C0224b.m634d(resources3, R.drawable.fsn_archive_rar, i71, i71);
            int i72 = f2232d;
            bitmapArr3[21] = C0224b.m634d(resources3, R.drawable.fsn_lib, i72, i72);
            int i73 = f2232d;
            bitmapArr3[22] = C0224b.m634d(resources3, R.drawable.fsn_dex, i73, i73);
            int i74 = f2232d;
            bitmapArr3[20] = C0224b.m634d(resources3, R.drawable.fsn_apks, i74, i74);
            int i75 = f2232d;
            bitmapArr3[23] = C0224b.m634d(resources3, R.drawable.fsn_obb, i75, i75);
            int i76 = f2232d;
            bitmapArr3[24] = C0224b.m634d(resources3, R.drawable.fsn_game_rom, i76, i76);
            int i77 = f2232d;
            bitmapArr3[25] = C0224b.m634d(resources3, R.drawable.fsn_backup, i77, i77);
            int i78 = f2232d;
            bitmapArr3[26] = C0224b.m634d(resources3, R.drawable.fsn_font, i78, i78);
            int i79 = f2232d;
            bitmapArr3[27] = C0224b.m634d(resources3, R.drawable.fsn_theme, i79, i79);
        }
        SparseArray<Bitmap> sparseArray = f2231c;
        synchronized (sparseArray) {
            if (sparseArray.size() > 0 && (bitmapValueAt = sparseArray.valueAt(0)) != null && bitmapValueAt.getWidth() != f2233e) {
                sparseArray.clear();
            }
        }
    }
}
